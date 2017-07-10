[1,2,3,4,5].each do |i|
  puts i**2
end

ary = ["a","b","c"]
ary.each{ |obj| p obj}
ary.each_with_index{|obj, idx|
  p [obj, idx]
}

# loop方法不需要传递块变量