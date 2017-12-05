p ARGF.readlines.count{|x|x.split==x.split.uniq }
ARGF.rewind
p ARGF.readlines.count{|x|z=x.split.map{|y|y.chars.sort};z==z.uniq}
