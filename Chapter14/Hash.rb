moji = "字符串"
str1 = "那也是#{moji}"
p str1 
str2 = ' 那也是#{moji}'
p str2

# 使用 " " 时，可以显示使用 \转义的特殊字符
# 
# 当创建包含 " 或者 ' 的字符串时，比起使用\"、\'进行转义，使用%Q或者%q会更简单。

describe = %Q(Ruby 的字符串中也可以使用'' 和 " ".)
str = %q|Ruby said, 'Hello world!'|
p str
p describe

n=123
printf("%d\n", n)
printf("%4d\n", n)
printf("%04d\n", n)
printf("%+d\n", n)

n = "Ruby"
printf("Hello,%s!\n", n) 
printf("Hello,%8s!\n", n) 
printf("Hello,%-8s!\n", n)

p sprintf("%d", 123)
p sprintf("%04d", 123)
p sprintf("%+d", 123)
p sprintf("Hello,%s!\n", n) 
p sprintf("Hello,%8s!\n", n) 
p sprintf("Hello,%-8s!\n", n)

p "just another ruby hacker,".length
p "just another ruby hacker,".size

p '面向对象编程语言'.length
p '面向对象编程语言'.bytesize

p "".empty?
p "foo".empty?

str = "全新的String类对象"
p str[0]
p str[3]
p str[9]
p str[2, 8]
p str[4]

## 字符串的连接

hello = "Hello, " 
world = "World!"
hello << world
p hello #=> "Hello, World!" 
hello.concat(world)
p hello #=> "Hello, World!World!"

## 字符串的比较
p "aaa" == "baa" 
p "aaa" == "aa" 
p "aaa" == "aaa" 
p "aaa" != "baa" 
p "aaa" != "aaa"

p ("aaaaa" < "b")
p ("一"<"丁") #=>true

## 字符串的分割
str = "高桥:gaoqiao:1234567:000-123-4567"
column = str.split(/:/)
p column
#=> ["高桥", "gaoqiao", "1234567", "000-123-4567"]

str = "abcde" # 没有换行符的情况 
newstr = str.chop
p newstr #=> "abcd"
newstr = str.chomp
p newstr #=> "abcde"

str2 = "abcd\n" # 有换行符的情况 
newstr = str2.chop
p newstr #=> "abcd"
newstr = str2.chomp
p newstr #=> "abcd"