VALID_CHOICES = ["rock", "paper", "scissors"]

def display_results(player, computer)
  if win?(player, computer)
    prompt "You won!"
  elsif win?(computer, player)
    prompt "Computer won!"
  else
    prompt "Tie game!"
  end
end

def win?(first, second)
  (first == "rock" && second == "scissors") ||
    (first == "paper" && second == "rock") ||
    (first == "scissors" && second == "paper")
end

def prompt(message)
  puts "=> #{message}"
end

loop do
  choice = ''
  loop do
    prompt "Choose one: #{VALID_CHOICES.join(', ')}"
    choice = gets.chomp

    break if VALID_CHOICES.include?(choice)
    prompt "Invalid choice! Please try again."
  end

  computer_choice = VALID_CHOICES.sample

  prompt "You chose #{choice}; Computer chose: #{computer_choice}."
  display_results(choice, computer_choice)

  prompt "Do you want to play again?"
  answer = gets.chomp
  break unless answer.downcase.start_with?("y")
end

prompt "Thank you for playing. Goodbye!"
