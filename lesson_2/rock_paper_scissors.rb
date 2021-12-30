VALID_CHOICES = ["rock", "paper", "scissors"]

def display_results(choice, computer_choice)
  if (choice == "rock" && computer_choice == "scissors") ||
    (choice == "paper" && computer_choice == "rock") ||
    (choice == "scissors" && computer_choice == "paper")
    prompt "You won!"
  elsif (choice == "rock" && computer_choice == "paper") ||
        (choice == "paper" && computer_choice == "scissors") ||
        (choice == "scissors" && computer_choice == "rock")
    prompt "Computer won!"
  else
    prompt "Tie game!"
  end
end

def prompt(message)
  puts "=> #{message}"
end

loop do
  choice = ''
  loop do
    prompt "Choose one: #{VALID_CHOICES.join(", ")}"
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
