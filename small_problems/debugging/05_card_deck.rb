cards = [2, 3, 4, 5, 6, 7, 8, 9, 10, :jack, :queen, :king, :ace]

deck = { :hearts   => cards.dup,
         :diamonds => cards.dup,
         :clubs    => cards.dup,
         :spades   => cards.dup }

def score(card)
  case card
  when :ace   then 11
  when :king  then 10
  when :queen then 10
  when :jack  then 10
  else card
  end
end

# Pick one random card per suit

player_cards = []
deck.keys.each do |suit|
  cards = deck[suit]
  cards.shuffle!
  player_cards << cards.pop
end

# Determine the score of the remaining cards in the deck

sum = deck.reduce(0) do |sum, (_, remaining_cards)|

  remaining_cards = remaining_cards.map do |card|
    score(card)
  end

  sum += remaining_cards.sum
end


# p cards
# p deck[:hearts]
# p deck[:diamonds]
# p deck[:clubs]
# p deck[:spades]
# p player_cards
# p sum





p sum

hand_value = player_cards.map do |card|
  score(card)
end


p hand_value.sum

p hand_value.sum + sum == 380