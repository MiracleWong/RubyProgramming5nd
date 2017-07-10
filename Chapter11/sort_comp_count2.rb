ary = %w(
  Ruby is a open source programming language with a focus on simplicity and productivity. It has an elegant syntax that is natural to read and easy to write
)

sorted = ary.sort_by{ |item| item.length}

puts "排序结果 #{sorted}"
puts "数组的元素数量 #{ary.length}"