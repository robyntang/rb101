VALID_CHOICES = %w(rock paper scissors)

def prompt(message)
  Kernel.puts("=> #{message}")
end

def display_results(player, computer)
  if (player == 'rock' && computer == 'scissors') ||
      (player == 'paper' && computer == 'rock') ||
      (player == 'scissors' && computer == 'paper')
    prompt("You won!")
  elsif (player == 'scissors' && computer == 'rock') || 
        (player == 'rock' && computer == 'paper') ||
        (player == 'paper' && computer == 'scissors')
    prompt("Computer won!")
  else
    prompt("It's a tie")
end
end

loop do
  player = ''
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    player = Kernel.gets().chomp()

    if VALID_CHOICES.include?(player)
      break
    else
      prompt("That is not a valid player.")
    end
  end

  computer = VALID_CHOICES.sample

  prompt("You chose: #{player}; Computer chose: #{computer}")

  winning_message = display_results(player, computer)

prompt("Do you want to play again?")
answer = Kernel.gets().chomp()
break unless answer.downcase().start_with?('y')
end

prompt("Thank you for playing.")
 