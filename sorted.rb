array = ["ruby", "Perl", "PHP", "Python"]

sorted1 = array.sort
puts "sorted1: #{sorted1}"

sorted2 = array.sort{ |a, b| a <=> b }
puts "sorted2: #{sorted2}"

sorted3 = array.sort{ |a ,b| a.length <=> b.length }
puts "sorted3: #{sorted3}"

# 块最后的一个表达式不是指块的最后一行表达式，而是指在块中最后执行的表达式
# 块经常被用来在sort方法中实现自定义排列顺序