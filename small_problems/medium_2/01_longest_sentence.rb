# 01_longest_sentence.rb


sentences = File.read("frankenstein.txt").split(/\.|\?|!/)

longest_sentence = ''

sentences.each do |sentence|
  if sentence.split(' ').size > longest_sentence.split(' ').size
    longest_sentence = sentence
  end
end

print longest_sentence
