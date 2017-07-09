# 计算单词数量
count = Hash.new(0)
## 统计单词 
File.open(ARGV[0]) do |f|
  f.each_line do |line|
    words = line.split
    words.each do |word|
      count[word] += 1
    end
  end
end

## 输出结果
count.sort{|a, b|
  a[1] <=> b[1]
}.each do |key, value|
  print "#{key}: #{value}\n"
end