def traverse(path)
  Dir.glob(["#{path}/**/*","#{path}/**/.*"]).each do |name|
    unless File.directory?(name)
      process_file(name)
    end
  end
end