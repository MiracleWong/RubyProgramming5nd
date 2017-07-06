def total(from, to)
  result = 0
  from.upto(to) do |num|
    if block_given?
      result += yield(num)
    else
      result += num
    end
  end
  return result
end

# p total(1, 10) #55
# p total(1, 10){|num| num**2} #385
# n = total(1, 10) do |num|
#    if num == 5
#       break
#    end
#    num
# end
# p n    # nil

n = total(1, 10) do |num|
   if num % 2 != 0
      next 0
   end
   num
end
p n    # 30


