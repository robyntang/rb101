





# 01_madlibs_revisted.rb


ADJECTIVES = ["pretty", "juicy", "ugly", "moist", "swanky", "feral", "cloudy", "clumsy", "fat", "chubby", "slutty", "comely", "calm", "beautiful"]
NOUNS = [ "man", "cat", "dog", "horse", "umbrella", "giraffe", "ambulance", "hair", "pillow" ]
VERBS = ["runs", "jumps", "hisses", "eats", "laughs", "dances", "cries", "sings", "whistles", "breaks"]
ADVERBS = [ "accidentally", "angrily", "anxiously", "awkwardly", "badly", "awfully", "blindly", "boldly"]

# # def scramble(array)
# #   array.shuffle.first
# # end

# # madlibs_text = File.read("madlibs.txt")
# # sentences = madlibs_text.split("\n")

# new_paragraph = sentences.map do |sentence|
#   new_sentence = sentence.split(' ').map do |word|
#    word % {noun: scramble(NOUNS), verb: scramble(VERBS), adverb: scramble(ADVERBS), adjective: scramble(ADJECTIVES)}
#   end
#   new_sentence.join(' ')
# end



madlibs_text = File.read("madlibs.txt")
sentences = madlibs_text.split("\n")

sentences.each do |sentence|
  new_sentence = sentence.split.map do |word|
    word % { noun: NOUNS.sample, verb: VERBS.sample, adverb: ADVERBS.sample, adjective: ADJECTIVES.sample }
  end
  puts new_sentence.join(' ')
end

# ADJECTIVES = %w(quick lazy sleepy ugly).freeze
# NOUNS      = %w(fox dog head leg cat tail).freeze
# VERBS      = %w(spins bites licks hurdles).freeze
# ADVERBS    = %w(easily lazily noisly excitedly).freeze

# File.open('madlibs.txt') do |file|
#   file.each do |line|
#     puts format(line, noun:      NOUNS.sample,
#                       verb:      VERBS.sample,
#                       adjective: ADJECTIVES.sample,
#                       adverb:    ADVERBS.sample)
#   end
# end