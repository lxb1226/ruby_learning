
# 定义带块的方法
# yield关键字的作用就是执行方法的块，
def myloop
  while true
    yield # 执行块
  end
end

num = 1
myloop do
  puts "num is #{num}"
  break if num > 100
  num *= 2
end
