# アスキーアートのテンプレ
asciiart = <<END
   ##########
 ##          ##
##   #    #   ##
##            ##
##  ##    ##  ##
##    ####    ##
 ##          ##
   ##########
END

# メイン
code = <<'END'
  3.times { 
    puts "Hello%c:-%c" % [32, 41]
  }
  #######
END

# 空白or改行の除外
code = code.split.join

# よしなにやってくれるもの
code = 'eval(%w(' + code + ')*"")'

code = asciiart.gsub("#") { code.slice!(0, 1) }

# 出力
puts code
