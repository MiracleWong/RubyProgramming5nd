1: pattern = Regexp.new(ARGV[0]) 
2: filename = ARGV[1]
3:
4:
5: 6:
file = File.open(filename) file.each_line do |line|
if pattern =~ line
                                                                                                            
													    7: print line 8: end
													    9: end
													    10: file.close
