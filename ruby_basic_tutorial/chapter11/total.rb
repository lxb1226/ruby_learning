
def total(from, to)
  result = 0
  # Integer#upto方法把from到to之间的整数值按照从小到大的顺序取出来，然后交给块处理，最后再将块处理的值累加到变量result
  from.upto(to) do |num|
    # 该方法用来判断调用该方法时是否有块被传递给方法，如果有则返回true，否则为false
    if block_given?
      result += yield(num)
    else
      result += num
    end
  end

  return result
end

p total(1, 10)
p total(1, 10){|num| num ** 2}
