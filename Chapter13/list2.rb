list = ["a", "b", "c", "d"] 
list.each_with_index do |elem, i|
  print "第", i+1,"个元素是",elem,"。\n" 
end