
# Proc参数一定要在所有参数之后，也就是方法中最后一个参数。
def total2(from, to, &block)
  result = 0
  from.upto(to) do |num|
    if block
      result += block.call(num)
    else
      result += num
    end
  end

  return result
end

p total2(1, 10)
p total2(1, 10){|num| num ** 2}