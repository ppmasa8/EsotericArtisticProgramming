S = 25
A = S / 2.1
B = S / 8.0

n = 0

print "\e[2J"
loop do
  s = (0...S).map { " " * S * 2 }

  100.times do |i|
    t = Math::PI * 2 * (i + n) / 100
    e = Complex(A * Math.cos(t), B * Math.sin(t))

    -1.upto(1) do |j|
      e2 = e * Complex.polar(1.0, Math::PI * 2 / 3 * j + n / 500.0)

      x = (e2.real * 2 + S).floor
      y = (e2.imag * 2 + S).floor
      if i == 99
        s[y / 2][x - 1, 2] = "()"
      elsif y % 2 == 0
        s[y / 2][x] = s[y / 2][x] == " " || s[y / 2][x] == "'" ? "'" : ";"
      else
        s[y / 2][x] = s[y / 2][x] == " " || s[y / 2][x] == "," ? "," : ";"
      end
    end
  end

  print "\e[1;1H" + s.join("\n")
  sleep 0.03

  n += 1
end
