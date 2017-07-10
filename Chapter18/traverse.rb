def traverse(path)
  if File.directory?(path)  # 如果是目录
    dir = Dir.open(path)
    while name = dir.read
      next if name == "."
      next if name == ".."
      traverse(path + "/" + name)
    end
    dir.close
  else
    process_file(path)  # 处理文件
  end
end
def process_file(path)  # 输出结果
  puts path
end

traverse(ARGV[0])