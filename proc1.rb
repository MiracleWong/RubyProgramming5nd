hello = Proc.new do |name|
  puts "Hello, #{name}."
end

hello.call("World")
hello.call("Ruby")

#  Ruby 还能把块当作对象处理。
#  把块当作对象处理后，就可以在接收块的方法之外的其他地方执行块，或者把块交给其他方法执行。