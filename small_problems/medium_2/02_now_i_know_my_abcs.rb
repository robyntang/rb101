# 02_now_i_know_my_abcs.rb

BLOCKS = ['BO', 'XK', 'DQ', 'CP', 'NA', 'GT', 'RE', 'FS', 'JW', 'HU', 'VI', 'LY', 'ZM']

# def block_word?(string)
#   characters = string.upcase.chars

#   BLOCKS.each do |element|
#     # return false if characters.include?(element[0]) && characters.include?(element[1])
#     # return false if  characters.count {|char| element.chars.include?(char)} > 1
#     return false if (characters.count(element[0]) + characters.count(element[1])) > 1
#     end
#   true
# end


def block_word?(string)
  string = string.upcase
  BLOCKS.each do |element|
    return false if (string.count(element)) > 1
    end
  true
end

p block_word?('BATCH')
p block_word?('BUTCH')
p block_word?('jest')
p block_word?('butch')
p block_word?('RESPECT')
p block_word?('BALLS')
p block_word?('ball')

