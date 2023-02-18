# 10_the_end_is_here_but_not_here.rb


def penultimate(phrase)
  array = phrase.split
  array[-2]
end





p penultimate('last word')
p penultimate('Launch School is great!')