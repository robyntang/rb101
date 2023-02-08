#08_alpabetical_numbers.rb

# Write a method that takes an Array of Integers between 0 and 19,
# and returns an Array of those Integers sorted based on the English words for each number:

# WORD_NUMBERS = [ 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine', 'ten', 'eleven', 'twelve',
#   'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen' ]


# def alphabetic_number_sort(number_array)
#   sorting_array = []
#   number_array.each do |number|
#     sorting_array << WORD_NUMBERS[number]
#   end
#   sorting_array.sort!
#   counter = 0
#   loop do
#     sorting_array[counter] = WORD_NUMBERS.index {|element| element == sorting_array[counter]}
#     counter += 1
#     break if counter == sorting_array.size
#   end
#   sorting_array
# end

NUMBER_WORDS = %w(zero one two three four
                  five six seven eight nine
                  ten eleven twelve thirteen fourteen
                  fifteen sixteen seventeen eighteen nineteen)

def alphabetic_number_sort(numbers)
  numbers.sort_by { |number| NUMBER_WORDS[number] }
end


p alphabetic_number_sort([1,2,3])
p alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]