
# 将块封装为对象，使用Proc对象
hello = Proc.new do |name|
  puts "Hello, #{name}"
end

hello.call("World")
hello.call("Ruby")