class PointOperator
  attr_accessor :x, :y

  def initialize(x=0, y=0)
    @x, @y = x, y
  end

  def inspect
    "(#{x}, #{y})"
  end

  def +(other)
    self.class.new(x + other.x , y + other.y )
  end

  def -(other)
    self.class.new(x - other.x , y - other.y )
  end
end

point0 = PointOperator.new(3 , 6)
point1 = PointOperator.new(1 , 8)

p point0
p point1

p point0 + point1
p point0 - point1