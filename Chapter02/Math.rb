p Math.sqrt(2) 

p 10.to_f
p 10.8.to_i 
p -10.8.to_i 
p "123".to_i 
p "12.3".to_f


p 1.2.round 
p 1.8.round 
p -1.2.round 
p -1.8.round
 
p 1.5.ceil 
p -1.5.ceil 
p 1.5.floor 
p -1.5.floor

p 1.5.to_r #=> (3/2)
p 1.5.to_c #=> (1.5+0i)

def pb(i)
# 使用printf 的%b 格式
# 将整数的末尾8 位用2 进制表示
 printf("%08b\n", i & 0b11111111) 
end
b = 0b11110000 
pb(b)
pb(~b)
pb(b & 0b00010001) 
pb(b | 0b00010001) 
pb(b ^ 0b00010001) 
pb(b >> 3)
pb(b << 3)


## 随机数
p Random.rand
p Random.rand(100) 
p Random.rand(100)


r1 = Random.new(1) # 初始化随机数组 
p [r1.rand, r1.rand]
#=> [0.417022004702574, 0.7203244934421581]
r2 = Random.new(1) # 再次初始化随机数组 
p [r2.rand, r2.rand]
#=> [0.417022003702574, 0.7203244934421581]


r1 = Random.new
p [r1.rand, r1.rand]
#=> [0.49452535392946817, 0.34141702823098863]
r2 = Random.new
p [r2.rand, r2.rand]
#=> [0.9464262066747281, 0.01911968591048996]


ary = [] 
10.times do |i|
  ary << i 
end
p ary #=>[0,1,2,3,4,5,6,7,8,9]


ary = [] 
2.upto(10) do |i|
  ary << i 
end
p ary #=>[2,3,4,5,6,7,8,9,10]


ary = [] 
10.downto(2) do |i|
  ary << i end
p ary #=>[10,9,8,7,6,5,4,3,2]


ary = []
2.step(10, 3) do |i|
  ary << i end
p ary #=> [2, 5, 8]
 
ary = []
10.step(2, -3) do |i|
  ary << i end
p ary #=> [10, 7, 4]

ary = 2.step(10).collect{|i| i * 2}
p ary #=>[4,6,8,10,12,14,16,18,20]


a = 0.1 + 0.2
b = 0.3
p [a, b] #=> [0.3, 0.3] 
p a==b #=>false


a = Rational(1, 10) + Rational(2, 10) 
b = Rational(3, 10)
p [a, b] #=> [(3/10), (3/10)]
p a == b



class Vector
  include Comparable
  attr_accessor :x, :y
 
def initialize(x, y) @x,@y=x,y
end
  def scalar
    Math.sqrt(x ** 2 + y ** 2)
end
def <=> (other)
scalar <=> other.scalar
 
 
end end
 
v1 = Vector.new(2, 6) 
v2 = Vector.new(4, -4) 
p v1<=>v2 #=>1
p v1 < v2 #=> false 
p v1>v2 #=>true