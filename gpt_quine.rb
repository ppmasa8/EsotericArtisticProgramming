s="s=%p;$><<(s%%s).unpack('H*')[0].scan(/../).map{|x|'\\x'+x}.join";$><<(s%s).unpack('H*')[0].scan(/../).map{|x|x.hex.chr}.join
