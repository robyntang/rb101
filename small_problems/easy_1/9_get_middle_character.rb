# Write a method that takes a non-empty string argument,
# and returns the middle character or characters of the argument.
# If the argument has an odd length, you should return exactly one character.
# If the argument has an even length,
# you should return exactly two characters

# def center_of(phrase)
#   median = []
#   if phrase.length.odd?
#     median = ((phrase.length / 2).floor)
#     puts phrase[median]
#   else
#    median << [phrase[((phrase.length / 2)-1)]]
#    median << [phrase[(phrase.length / 2)]]
# puts median.join
#   end
# end


def center_of(string)
  x = string.size.divmod(2)
  string[(x[0] + x[1] - 1)..x[0]]
end

p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'