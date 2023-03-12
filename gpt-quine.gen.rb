ascii_art = <<END
            ########
            ##    ##
            # #  # #
            #  ##  #
            #  ##  #
            # #  # #
            ##    ##
            ########
END

code = <<END
s="s=%p;$><<(s%%s).unpack('H*')[0].scan(/../).map{|x|'\\x'+x}.join";$><<(s%s).unpack('H*')[0].scan(/../).map{|x|x.hex.chr}.join
END

code = code.split.join

code = ascii_art.gsub("#"){code.slice!(0, 1)}

puts code
