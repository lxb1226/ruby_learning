class Point
  attr_reader :x, :y

  def initialize(x = 0, y = 0)
    @x, @y = x, y
  end

  def inspect# 用于显示
    "(#{x}, #{y})"
  end

  def +(other) # 加法运算
    self.class.new(x + other.x, y + other.y)
  end

  def -(other) # 减法运算
    self.class.new(x - other.x, y - other.y)
  end

  # 一元运算符
  def +@ #返回自己的副本
    dup
  end

  def -@ # 颠倒x、y各自的正负
    self.class.new(-x, -y)
  end

  def ~@ # 使坐标翻转90度
    self.class.new(-y, x)
  end

  # 下标方法
  def [](index)
    case index
    when 0
      x
    when 1
      y
    else
      raise ArgumentError, "out of range `#{index}`"
    end
  end

  def []=(index, val)
    case index
    when 0
      self.x = val
    when 1
      self.y = val
    else
      raise ArgumentError, "out of range `#{index}`"
    end
  end

end

point0 = Point.new(3, 6)
point1 = Point.new(1, 8)

p point0
p point1

p point0 + point1
p point0 - point1

p point1[0]
p point1[1]
p point1[2] # 报错

# p方法调用了inspect方法，p方法做了特殊处理
# puts方法调用了to_s方法

