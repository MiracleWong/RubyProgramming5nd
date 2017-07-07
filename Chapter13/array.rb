# 插入元素
alpha = ["a", "b", "c", "d", "e", "f"]
alpha[2, 0] = ["X", "Y"]
p alpha
p alpha[-1]
p alpha[-2]
nums = [1, 2, 3, 4, 5]
strs = ["a", "b", "c", "d", "e"]
p nums
p strs

## 通过多个索引创建数组
alpha1 = %w(a b c d e f)
p alpha1.values_at(1,3,5)

## 作为集合的数组
## 集合的基本运算分为：交集和并集
## 交集：ary = ary1 & ary2 取出同时属于两个集合的元素，并创建新的集合
## 并集：ary = ary1 | ary2：取出两个集合中所有的元素，并创建新的集合

ary1 = ["a", "b", "c"]
ary2 = ["b", "c", "d"]
p (ary1 & ary2)
p (ary1 | ary2)
p (ary1 - ary2)

## 集合的差
num = [1, 2, 3]
even = [2, 4, 6]
p (num + even)
p (num | even)

## 队列(Queue)和栈(Stack)
## 先进先出 & 先进后出
alpha2 = ["a", "b", "c", "d", "e"]
p alpha2.push("f")
p alpha2.shift
p alpha2.pop
p alpha2.first
p alpha2.last
p alpha2

## 主要的数组方法
a = [1,2,3,4,5]
a.unshift(0)
p a
a << 6
p a
a.concat([8,9])
a1 = [1, 2, 3, 4, 5, 6, 7, 8]
p a1
a1[2..4] = 0
p a1
a1[1,3] = 9
p a1

## 具有破坏性的方法
## 像pop方法、shift方法那样，会改变接收者对象值的方法称为具有破坏性的方法。
## 为了区分方法是否具有破坏性，在具有破坏性的方法末尾添加!这一做法是通用的规则

## 从数组中删除元素
a2 = [1, nil, 3, nil, nil]
a2.compact!
p a2

a3 = [1, 2, 3, 2, 1]
a3.delete(2)
p a3

a4 = [1, 2, 3, 4, 5]
a4.delete_at(2)
p a4

a = [1, 2, 3, 4, 5]
a.delete_if{|i| i>3}
p a

a = [1, 2, 3, 4, 5]
p a.slice!(1,2)
p a

a = [1, 2, 3, 4, 3, 2, 1]
a.uniq!
p a

a = [1, 2, 3, 4, 5]
a.shift
p a

a = [1, 2, 3, 4, 5]
a.pop
p a

a = [1, 2, 3, 4, 5]
a.collect!{|item| item*2}
p a

p [1, 2, 3, 4, 5].fill(0) #=> [0, 0, 0, 0 ,0] 
p [1, 2, 3, 4, 5].fill(0, 2) #=> [1, 2, 0, 0, 0] 
p [1, 2, 3, 4, 5].fill(0,2,2) #=>[1,2,0,0,5] 
p [1, 2, 3, 4, 5].fill(0, 2..3) #=> [1, 2, 0, 0, 5]

a = [1, [2, [3]], [4], 5]
a.flatten!
p a

a = [1, 2, 3, 4, 5]
a.reverse!
p a

a = [2, 4, 3, 5, 1]
a.sort!
p a

a = [2, 4, 3, 5, 1]
p a.sort_by{|i| -i}

# 迭代器
a = 1..5
b = a.collect{ |i| i += 2}
p b

a = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
p a[1][2]

a = Array.new(3, [0, 0, 0])
p a
a[0][1] = 2
p a

a = Array.new(3) do 
  [0, 0, 0]
end
p a

a[0][1] = 2
p a

a = Array.new(5){|i| i + 1 }
p a