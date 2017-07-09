require 'date'
d = Date.today
puts d

p d.year 
p d.month 
p d.day 
p d.wday 
p d.mday 
p d.yday

## 生成指定的对象
d = Date.new(2013,3,30)
puts d

# Date 类有一个特点是，可以对月末的日期做-1处理

d = Date.new(2013, 2, -1)
puts d
d = Date.new(2016, 2, -1)
puts d

## 日期的运算
d1 = Date.new(2013, 1, 1)
d2 = Date.new(2013, 1, 4)
puts d2 - d1    #=> 3/1 (3 天的意思)
d = Date.today 
puts d
puts d + 1
puts d + 100
puts d - 1
puts d - 100

## 通过使用 ">>" 运算符，获取后一个月相同的Date对象，使用 "<<" 得到的是前一个月相同日期的Date对象
## 如果该月中没有相同的日期(例如2月30日)，则会返回月末的日期。
d = Date.today 
puts d
puts d >> 1
puts d >> 100
puts d << 1
puts d << 100

## 日期的格式

t = Date.today
p t.strftime("%Y/%m/%d %H:%M:%S")
#=> "2013/03/30 00:00:00"
p t.strftime("%a %b %d %H:%M:%S %Z %Y")
#=> "Sat Mar 30 00:00:00 +00:00 2013" 
p t.to_s #=> "2013-03-30"

## 从字符串获取日期

puts Date.parse("Sat Mar 30 03:50:12 JST 2013") #=> 2013-03-30 
puts Date.parse("H25.05.30") #=> 2013-05-30 
puts Date.parse("S48.9.28") #=> 1973-09-28
   