sum = 0
outcome = {"参加费"=>1000, "挂件费用"=>1000, "联欢会费用"=>4000}
outcome.each do |pair|
  sum += pair[1]
end
puts "合计： #{sum}"

# 或者
sum = 0
outcome.each do |item, price|
  sum += price
end

puts "合计： #{sum}"

array = ["ruby", "Perl", "PHP", "Python"]
sorted = array.sort
p sorted

# Array#sort 方法没有指定块时，会使用<=>运算符对各个元素进行比较，并根据比较后的结果进行排序
sorted = array.sort{|a, b| a <=> b}
p sorted

# 按字符串的长度排序时
sorted = array.sort{|a, b| a.length <=> b.length}
p sorted