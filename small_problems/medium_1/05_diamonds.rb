# 05_diamonds.rb

# def triangle(num)
#   (num + 1).times { |i| puts ( " " * (num - i)) + ("*" * i) }
# end

# triangle(3)

def diamond(num)

  1.upto(num).each do |digit|
    unless digit.even?
      puts " " * ((num - digit) / 2 ) + "*" * digit
    end
  end

  (num - 1).downto(1).each do |digit|
    unless digit.even?
      puts " " * ((num - digit) / 2 ) + "*" * digit
    end
  end

end

diamond(13)