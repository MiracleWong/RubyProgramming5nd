# encoding: EUC-JP
a = "\u3042\u3044"
puts a
a.encode!("EUC-JP")
p a.encoding

p Encoding.find("Shift_JIS")
p Encoding.list
p Encoding.name_list
p Encoding.find("shift_jis").name