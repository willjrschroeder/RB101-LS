require "pry"

# ask for two numbers from the user
# ask the user for an operation to perform
# perform the operation on the numbers
# output the result

def prompt(message)
  puts "=> #{message}"
end

def integer?(x)
  return true if x.to_i.to_s == x # checks if x is an integer
  false # returns false if x is not an integer
end

def float?(x)
  return true if x.to_f.to_s == x # checks if x is a float
  false # returns false if x is not a float
end

keep_going = true
while keep_going == true
  num1 = ''
  num2 = ''
  prompt "Welcome to the Calculator!"

  loop do
    prompt "What's the first number?"
    num1 = gets.chomp
    if integer?(num1)
      num1 = num1.to_i
      break
    elsif float?(num1)
      num1 = num1.to_f
      break
    end
    prompt "Invalid input! Please enter an integer or a float value."
  end

  loop do
    prompt "What's the second number?"
    num2 = gets.chomp
    if integer?(num2)
      num2 = num2.to_i
      break
    elsif float?(num2)
      num2 = num2.to_f
      break
    end
    prompt "Invalid input! Please enter an integer or a float value."
  end

  operator_message = <<-MSG
  What operation would you like to perform?
    1. addition
    2. subtraction
    3. multiplication
    4. division
  MSG

  prompt operator_message
  operator = ''
  loop do
    operator = gets.chomp
    break if operator == '1' || operator == '2' || operator == '3' || operator == '4'
    prompt "Invalid input! Please enter 1, 2, 3, or 4."
  end

  case operator

  when "1" then result = num1 + num2
  when "2" then result = num1 - num2
  when "3" then result = num1 * num2
  when "4" then result = num1 / num2

  end

  prompt "The answer is #{result}"

  loop do
    prompt "Do you want to calculate another number? (Y/N)"
    answer = gets.chomp.downcase
    break if answer == 'y'
    if answer == 'n'
      keep_going = false
      break
    end
    prompt "Invalid response! Please enter Y or N."
  end

prompt "Thanks for using the calculator!"
end
