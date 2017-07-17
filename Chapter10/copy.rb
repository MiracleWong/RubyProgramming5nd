def copy(from, to)
  src = File.open(from)      ## 打开源文件from(A)
  begin
    dst = File.open(to, "w") ## 打开目标文件to(B)
    data = src.read
    dst.write(data)
    dst.close
  ensure
    src.close
  end
end