# Mad libs are a simple game where you create a story template with blanks for words.
# You, or another player, then construct a list of words and place them into the story,
# creating an often silly or funny story as a result.

# Create a simple mad-lib program that prompts for a noun, a verb, an adverb, and an adjective
# and injects those into a story that you create.

def prompt(word)
  puts "Enter a #{word}:"
  gets.chomp
end


puts "How do you #{prompt("verb")} your #{prompt("adjective")} #{prompt("noun")} #{prompt("adverb")}? That's fascinating"