## 复习散列
person = Array.new 
person[0] = "田中一郎" 
person[1] = "佐藤次郎" 
person[2] = "木村三郎"
p person[1] #=> "佐藤次郎"

person = Hash.new 
person["tanaka"] = "田中一郎" 
person["satou"] = "佐藤次郎" 
person["kimura"] = "木村三郎"
p person["satou"] #=> "佐藤次郎"

## 散列的创建
# {键 =>值}
h1 = {"a"=>"b", "c"=>"d"}
p h1["a"]
# {键:值}
h2 = {a: "b", c: "d"}
p h1["a"]

h1 = Hash.new
h2 = Hash.new("")
p h1["not_key"] #=> nil 
p h2["not_key"]

# 一般建议字符串、数值、符号、日期作为散列的键


## 散列值地获取和设定
h = Hash.new
h["R"] = "Ruby"
p h["R"]

h = Hash.new
h.store("R", "Ruby")
p h.fetch("R") #=> "Ruby"
p h.fetch("R", "(undef)") #=> "Ruby"
p h.fetch("N", "(undef)") #=> "(undef)"

# 一次性获取所有的键、值
h = {"a"=>"b", "c"=>"d"}
p h.keys #=> ["a", "c"]
p h.values #=> ["b", "d"]
p h.to_a #=> [["a", "b"], ["c", "d"]]

# 散列的默认值
h = Hash.new(1)  # 创建时指定
h["a"] = 10
p h["a"]
p h["x"]
p h["y"]

h = Hash.new { |hash, key| hash[key] = key.upcase }
h["a"] = "b"
p h["a"]
p h["x"]
p h["y"]

h = Hash.new { |hash, key| hash[key] = key.upcase }
p h.fetch("x", "(undef)")

## 查看指定对象是否为散列的键或值
h = {"a" => "b", "c" => "d"}
p h.key?("a")
p h.has_key?("a") 
p h.include?("z") 
p h.member?("z")
p h.value?("b") #=> true 
p h.has_value?("z") #=> false

## 查看散列的大小
p h.length #=> 2
p h.size #=> 2
p h.empty? #=> false
h2 = Hash.new
p h2.empty? #=> true

## 删除键值
h = {"R"=>"Ruby"}
p h["R"] #=> "Ruby" 
h.delete("R")
p h["R"] #=> nil
h = {"R"=>"Ruby"}
p h.delete("P"){|key| "no #{key}."} #=> "no P."

h = {"R"=>"Ruby", "P"=>"Perl"}
p h.delete_if{|key, value| key == "P"} #=> {"R"=>"Ruby"}

## 初始化散列
h = {"a"=>"b", "c"=>"d"} 
h.clear  #clear清空使用过地散列
p h.size #=> 0