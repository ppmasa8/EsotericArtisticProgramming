W, H = 79, 25

Charge = Struct.new(:x, :y, :e, :de)
charges = (0..9).map { Charge[0, 0, 0, 0] }

print "\e[2J"
loop do
  charges.each do |p|
    p.e += p.de
    p.de -= 0.002
    if p.e <= 0
      p.x = rand * W
      p.y = rand * H
      p.e = 0
      p.de = rand * 0.05 + 0.05
    end
  end

  f = (0..H).map do |y|
    (0..W).map do |x|
      v = 0.0
      charges.each do |p|
        v += p.e / Math.hypot(p.x - x, (p.y - y) ** 2)
      end
      v
    end
  end

  s = (0...H).map do |y|
    (0...W).map do |x|
      v  = f[y  ][x  ] > 0.5 ? 1 : 0
      v += f[y  ][x+1] > 0.5 ? 2 : 0
      v += f[y+1][x  ] > 0.5 ? 4 : 0
      v += f[y+1][x+1] > 0.5 ? 8 : 0
      " '`-.|+,,+|.-`' "[v]
    end.join
  end

  print "\e[1;1H" + s.join("\n")
  sleep 0.01
end
