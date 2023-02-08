#05_clean_up_words.rb

def cleanup(string)
string.gsub(/\W/, ' ').squeeze(' ')
end

p cleanup("---what's my +*& line?")