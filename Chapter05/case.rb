tags = [ "A", "IMG", "PRE" ]
tags.each do |tagname|
    case tagname
    when "P","A","I","B","BLOCKQUOTE"
        puts "#{tagname} has child."
    when "IMG", "BR"
        puts "#{tagname} has no child."
    else
        puts "#{tagname} cannot be used."
    end
end
