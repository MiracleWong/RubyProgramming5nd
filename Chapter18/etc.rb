require "etc"

st = File.stat("/usr/local/bin")
pw = Etc.getpwuid(st.uid)       ## 用户名
p pw.name
gr = Etc.getgrgid(st.gid)       ## 组名
p gr.name

filename = "foo"
File.open(filename, "w").close   # 创建文件后关闭

st = File.stat(filename)
p st.ctime
p st.atime
p st.mtime

File.utime(Time.now - 100, Time.now - 100, filename)
# utime改变文件属性中的最后访问时间atime、最后修改时间mtime。
st = File.stat(filename)
p st.ctime
p st.atime
p st.mtime

File.chmod(0755, filename)
rb_file = "test.rb"
st = File.stat(rb_file)
File.chmod(st.mode | 0111, rb_file)  # 追加执行权限test

## 文件名的操作
p File.basename("/usr/local/bin")
p File.basename("File.rb")

p File.dirname("/usr/local/bin")
p File.dirname("File.rb")
p File.dirname("/")

p File.extname("helloruby.rb")
p File.extname("ruby-2.0.0-p0.tar.gz") 
p File.extname("img/foo.png")
p File.extname("/usr/local/bin/ruby") 
p File.extname("~/.zshrc")
p File.extname("/etc/init.d/ssh")

p File.split("/usr/local/bin/ruby") #=> ["/usr/local/bin", "ruby"]
p File.split("ruby") #=> [".", "ruby"]
p File.split("/") #=> ["/", ""]
 
dir, base = File.split("/usr/local/bin/ruby") 
p dir #=> "/usr/local/bin" 
p base #=> "ruby"

p File.join("/usr/bin", "ruby") #=> "/usr/bin/ruby" 
p File.join(".", "ruby") #=> "./ruby"


p Dir.pwd
p File.expand_path("bin")
p File.expand_path("../bin")
p File.expand_path("bin", "/usr")
p File.expand_path("../etc", "/usr")



## 与操作文件相关的库
