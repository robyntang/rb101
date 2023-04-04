# 09_egyptian_fractions.rb

def egyptian(number)
counter = 1
egyptian_numbers = []
denominators = []
  loop do
    unless [egyptian_numbers.sum, Rational(1, counter)].sum > number
      egyptian_numbers << Rational(1,counter)
      denominators << counter
     end
     counter += 1
     break if egyptian_numbers.sum == number
  end
denominators
end

p egyptian(Rational(2, 1))    == [1, 2, 3, 6]
p egyptian(Rational(137, 60)) == [1, 2, 3, 4, 5]
p egyptian(Rational(3, 1))    == [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 15, 230, 57960]

def unegyptian(egyption)
egyptian_numbers = []
  egyption.each do |number|
    egyptian_numbers << Rational(1,number)
  end
egyptian_numbers.sum
end

p unegyptian(egyptian(Rational(1, 2))) == Rational(1, 2)
p unegyptian(egyptian(Rational(3, 4))) == Rational(3, 4)
p unegyptian(egyptian(Rational(39, 20))) == Rational(39, 20)
p unegyptian(egyptian(Rational(127, 130))) == Rational(127, 130)
p unegyptian(egyptian(Rational(5, 7))) == Rational(5, 7)
p unegyptian(egyptian(Rational(1, 1))) == Rational(1, 1)
p unegyptian(egyptian(Rational(2, 1))) == Rational(2, 1)
p unegyptian(egyptian(Rational(3, 1))) == Rational(3, 1)