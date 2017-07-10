def block_args_test
    yield()
    yield(1)
    yield(1, 2, 3)
end
# 0 个块变量 # 1 个块变量 # 3 个块变量
puts "通过|a| 接收块变量"
    block_args_test do |a|
    p [a]
end
puts

puts "通过|a, b, c| 接收块变量"
    block_args_test do |a, b, c|
    p [a, b, c] 
end
puts

puts "通过|*a| 接收块变量" 
block_args_test do |*a|
    p [a] 
end
puts