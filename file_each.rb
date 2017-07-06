file  = File.open("sample.txt")
file.each_line do |line|
    print line
end
file.close