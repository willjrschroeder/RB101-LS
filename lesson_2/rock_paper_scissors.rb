VALID_CHOICES = ["rock", "paper", "scissors", "lizard", "spock"]
WIN_CONDITIONS = {"rock" => ["scissors", "lizard"], 
                  "paper" => ["rock", "spock"],
                  "scissors" => ["paper", "lizard"],
                  "lizard" => ["spock", "paper"],
                  "spock" => ["rock", "scissors"]}
player_win_total = 0
computer_win_total = 0

def display_results(winner, player_win_total, computer_win_total)
  if winner == "player"
    prompt "You won!"
    prompt "Player total wins: #{player_win_total}"
    prompt "Computer total wins: #{computer_win_total}"
  elsif winner == "computer"
    prompt "Computer won!"
    prompt "Player total wins: #{player_win_total}"
    prompt "Computer total wins: #{computer_win_total}"
  else
    prompt "Tie game!"
    prompt "Player total wins: #{player_win_total}"
    prompt "Computer total wins: #{computer_win_total}"
  end
end

def win?(first, second)
  return true if WIN_CONDITIONS[first].include?(second)
  false
end

def prompt(message)
  puts "=> #{message}"
end

loop do
  choice = ''
  loop do
    prompt "Choose one: #{VALID_CHOICES.join(', ')}"
    choice = gets.chomp

    if choice.size == 1
      VALID_CHOICES.each do |word|
        if word =~ /#{choice}/
          choice = word
        end
      end
    elsif choice.size == 2
      VALID_CHOICES.each do |word|
        if word =~ /#{choice}/
          choice = word
        end
      end
    end

    break if VALID_CHOICES.include?(choice)
    prompt "Invalid choice! Please try again."
  end

  computer_choice = VALID_CHOICES.sample

  prompt "You chose #{choice}; Computer chose: #{computer_choice}."
  
  if win?(choice, computer_choice)
    player_win_total += 1
    display_results("player", player_win_total, computer_win_total)
  elsif win?(computer_choice, choice)
    computer_win_total += 1
    display_results("computer", player_win_total, computer_win_total)
  else
    display_results("tie", player_win_total, computer_win_total)
  end

  if player_win_total == 3
    prompt "You are the grand winner!"
    break
  elsif computer_win_total == 3
    prompt "The computer is the grand winner!"
    break
  end

  prompt "Do you want to play again?"
  answer = gets.chomp
  break unless answer.downcase.start_with?("y")
end

prompt "Thank you for playing. Goodbye!"
