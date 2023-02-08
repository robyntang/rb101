# 3_counting_the_number_of_characters.rb

# Write a program that will ask a user for an input of a word or multiple words
# and give back the number of characters. Spaces should not be counted as a character.


print "Please write word or multiple words: "
phrase = gets.chomp
characters = phrase.delete(" ").size
# puts "There are #{characters} characters in \"#{phrase}\"."




puts "There are #{characters} characters in " + phrase.inspect