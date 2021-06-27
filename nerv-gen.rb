art = <<END
                           #####
                      ##########
                    ############
           ###      ###########  ########
             ##     #######################
               ##############################
                 ##############################
                  ############################
      ####    ## ##########################
       #####  #  ###  #################
       # ######  #######################
       #   ####  ###   #  ###############
       #     ##  ####   ##  ##############
  ##             #########################
  ###            ###   ######## ###########
                 #### ###   ##### #########
    ##           ########     ##### ########
     ##          ###   ####     ###   #####
       #         ####   ####           ####
       ###                               ##
          ##                         ###
              #                  # ##
                 # ## #   # #####
                    ##### ##
END

main = <<END
eval((%w(
  1.upto(18) do |i|
    s = i;
    if (i == 1);
      s = "ADAM"
    elsif (i == 2);
      s = "LILITH"
    elsif (i == 3);
      s = "SACHIEL"
    elsif (i == 4);
      s = "SHAMSHEL"
    elsif (i == 5);
      s = "RAMIEL"
    elsif (i == 6);
      s = "GAGHIEL"
    elsif (i == 7);
      s = "ISRAFIL"
    elsif (i == 8);
      s = "SANDALPHON"
    elsif (i == 9);
      s = "MATARAEL"
    elsif (i == 10);
      s = "SAHAQUIEL"
    elsif (i == 11);
      s = "IREUL"
    elsif (i == 12);
      s = "LELIEL"
    elsif (i == 13);
      s = "BARDIEL"
    elsif (i == 14);
      s = "ZERUEL"
    elsif (i == 15);
      s = "ARAEL"
    elsif (i == 16);
      s = "ALMISAEL"
    elsif (i == 17);
      s = "TABLIS"
    else;
      s = "LILIN"
    end;
    puts(s)
  end
  )*""))
END

main = main.split.join

main = art.gsub("#") { main.slice!(0, 1) }

puts main
