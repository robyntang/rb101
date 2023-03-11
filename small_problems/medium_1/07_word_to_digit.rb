# 07_word_to_digit.rb

# NUMBERS = {
#   "zero" => 0,
#   "one" => 1,
#   "two" => 2,
#   "three" => 3,
#   "four" => 4,
#   "five" => 5,
#   "six" => 6,
#   "seven" => 7,
#   "eight" => 8,
#   "nine" => 9,
# }

# def word_to_digit(string)
# string.split.map! { |word| NUMBERS[word] || word }.join(' ')
# end

#the above example replaces the key with the value in the hash, but only if there is an exact correspondence.




DIGIT_HASH = {
  'zero' => '0', 'one' => '1', 'two' => '2', 'three' => '3', 'four' => '4',
  'five' => '5', 'six' => '6', 'seven' => '7', 'eight' => '8', 'nine' => '9'
}

def word_to_digit(words)
  DIGIT_HASH.keys.each do |word|
    words.gsub!(/\b#{word}\b/, DIGIT_HASH[word])
  end
  words
end


# def word_to_digit(string)
#   string.gsub!(/zero/,'0')
#   string.gsub!(/one/,'1')
#   string.gsub!(/two/,'2')
#   string.gsub!(/three/,'3')
#   string.gsub!(/four/,'4')
#   string.gsub!(/five/,'5')
#   string.gsub!(/six/,'6')
#   string.gsub!(/seven/,'7')
#   string.gsub!(/eight/,'8')
#   string.gsub!(/nine/,'9')
#   string
# end


p word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'
