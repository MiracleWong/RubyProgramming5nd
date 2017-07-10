require "fileutils"
File.rename("after.txt", "after.txt")

# 将文件移动到已存在的目录下，目录不存在则程序会产生错误
# File.rename("after.txt", "backup/after.txt")

## 如果文件不存在，或者诶呦适当的文件操作权限，则文件操作失败，程序抛出异常


## 利用File.open方法与write方法的组合来实现文件复制
def copy(from, to)
  File.open(from) do |input|
    File.open(to, "w") do |output|
      output.write(input.read)
    end
  end
end

## 使用FileUtils进行复制和移动
# FileUtils.cp ("data.txt", "/backup/data.txt")
# FileUtils.mv ("after.txt", "/backup/after.txt")


## 删除文件
# File.delete("after1.txt")
# File.unlink("fool1.txt")



## 目录的操作
p Dir.pwd
Dir.chdir("backup")
p Dir.pwd
Dir.chdir("/etc")
p Dir.pwd
Dir.chdir("/Users/miraclewong/github/ruby/Chapter18")
p Dir.pwd

## 当前目录下的文件，我们可以通过制定文件名直接打开，但如果变更了当前目录，则还需要指定目录名
io = File.open("File.rb")
io.close
Dir.chdir("../Chapter17")
p Dir.pwd
io = File.open("data.txt")
io.close

## 打开文件，读取内容，关闭
dir = Dir.open("/usr/bin")
while name = dir.read
  p name
end
dir.close

# dir = Dir.open("/usr/bin")
#   dir.each do |name|
#     p name
#   end
# end
# dir.close

Dir.open("/usr/bin") do |dir|
  dir.each do |name|
    p name
  end
end

##通过Dir#read后，程序会遍历读取最先打开的目录下的内容，分为4类
# 表示当前目录的.  PS：/usr/bin  & /usr/bin/.，表示同一个目录
# 表示上级目录的 ..
# 其他目录名
# 文件名
# 举例实例，可以看见 teaverse.rb
