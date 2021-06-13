asciiart = <<END
                              ##########
                             ####
                            ##
                           ##
                         ###    #####
                        ##    ##     ##
                       ##    #        ##
                       #     ##    #    ##
                       ##     #    ##   ##
                        ##     ####     ##
                       #  ##          ##
                      ##    ###    ###
                      #       ######
                     ## ######
                    ####
END

code = <<END
eval((%w(
  1.upto(10) do |i|
    s = i;
    if (i % 2 == 0);
      s = "fire"
    elsif (i % 2 == 1);
      s = "water"
    end;
    puts(s)
  end
)*""))
END

code = code.split.join

code = asciiart.gsub("#") { code.slice!(0, 1) }

puts code
