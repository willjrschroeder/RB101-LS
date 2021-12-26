require "pry"

# ask for two numbers from the user
# ask the user for an operation to perform
# perform the operation on the numbers
# output the result

def prompt(message)
  puts "=> #{message}"
end

def integer?(x)
  return true if x == '0'
  return true if x.to_i.to_s == x
  return false
end

keep_going = true
while keep_going == true
  num1 = 0
  num2 = 0
  prompt "Welcome to the Calculator!"
  
  loop do 
    prompt "What's the first number?"
    num1 = gets.chomp
    break if integer?(num1)
    prompt "Invalid input! Please enter an integer or a float value."
  end

  loop do 
    prompt "What's the second number?"
    num2 = gets.chomp
    break if integer?(num2)
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
  operator = gets.chomp

  case operator

  when "1" then result = num1.to_i + num2.to_i
  when "2" then result = num1.to_i - num2.to_i
  when "3" then result = num1.to_i * num2.to_i
  when "4" then result = num1.to_f / num2.to_f

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
