require 'time'
t = Time.now
p t.year
p t.month
p t.day
p t.hour
p t.min
p t.sec
p t.usec
p t.to_i
p t.wday
p t.mday
p t.yday
p t.zone
t1 = Time.mktime(2013, 5, 30, 3, 11, 12)
p t1

# t1 = Time.now
# sleep(10)
# t2 = Time.now
# p t1 < t2
# p t2 - t1


## 增加或者减少Time对象的秒数
t = Time.now
p t
t2 = t + 60 * 60 * 24
p t2
t3 = t - 60 * 60 * 24
p t3

p t.to_s
p t.strftime("%Y-%m-%d %H:%M:%S %z")
p t.strftime("%Y-%m-%d %H:%M:%S")
p t.strftime("%Y-%m-%d")

p "邮件头部时间:" + t.rfc2822
p "ISO时间:" + t.iso8601

## UTC & LocalTime
p t.utc 
p t.localtime

# 从字符串中获取时间
p Time.parse("Sat Mar 30 03:54:15 UTC 2013") #=> 2013-03-30 03:54:15 UTC
p Time.parse("Sat, 30 Mar 2013 03:54:15 +0900") #=> 2013-03-30 03:54:15 +0900
p Time.parse("2013/03/30") #=> 2013-03-30 00:00:00 +0900
p Time.parse("2013/03/30 03:54:15") #=> 2013-03-30 03:54:15 +0900
p Time.parse("H25.03.31") #=> 2013-03-31 00:00:00 +0900
p Time.parse("S48.9.28") #=> 1973-09-28 00:00:00 +0900