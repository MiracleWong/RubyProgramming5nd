class Point
    attr_accessor :x, :y
    protected :x=, :y=
    def initialize(x =0.0, y = 0.0)
        @x, @y = x, y 
    end

    def swap(other)
        tmp_x, tmp_y = @x, @y
        @x, @y = other.x, other.y
        other.x, other.y = tmp_x, tmp_y
        return self
    end
end

p0 = Point.new
p1 = Point.new(1.0, 2.0)
p [ p0.x, p0.y ]
p [ p1.x, p1.y ]

p0.swap(p1)
p [ p0.x, p0.y ]
p [ p1.x, p1.y ]

p0.x = 10.0