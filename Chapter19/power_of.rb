p Encoding.default_external
p Encoding.default_internal
File.open("foo.txt") do |f|
    p f.external_encoding
    p f.internal_encoding
end