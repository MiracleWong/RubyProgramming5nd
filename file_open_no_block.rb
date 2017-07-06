file  = File.open("sample.txt")
begin
  file.each_line do |line|
    print line
  end
ensure
  file.close    
end
