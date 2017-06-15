require "./grep"

patten = Regexp.new(ARGV[0])
filename = ARGV[1]
grepfile(patten,filename)