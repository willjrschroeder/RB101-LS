require "pry"

def prompt(message)
  puts "=> #{message}"
end

def number?(num)
  return true if num.to_f.to_s == num
  return true if num.to_i.to_s == num
  false
end

keep_going = true
while keep_going == true

  loan_amount = ''
  annual_percentage_rate = ''
  loan_duration_years = ''
  monthly_percentage_rate = 0
  loan_duration_months = 0
  monthly_payment = 0

  loop do
    prompt "Please enter the loan amount:"
    loan_amount = gets.chomp
    if number?(loan_amount)
      loan_amount = loan_amount.to_f
      break
    end
    prompt "Invalid input! Please enter the loan amount in an integer or float format."
  end

  loop do
    prompt "Please enter the APR (ex. 5.2% -- do not include the % sign)"
    annual_percentage_rate = gets.chomp
    if number?(annual_percentage_rate)
      annual_percentage_rate = annual_percentage_rate.to_f
      annual_percentage_rate *= 0.01
      break
    end
    prompt "Invalid input! Please enter the APR in an integer or float format!"
  end

  loop do
    prompt "Please enter the loan duration in years:"
    loan_duration_years = gets.chomp
    if number?(loan_duration_years)
      loan_duration_years = loan_duration_years.to_f
      break
    end
    prompt "Invalid input! Please enter the loan duration in an integer or float format!"
  end

  monthly_percentage_rate = annual_percentage_rate / 12
  loan_duration_months = loan_duration_years * 12

  monthly_payment = loan_amount * (monthly_percentage_rate / (1 - (1 + monthly_percentage_rate)**(-loan_duration_months)))
  monthly_payment = monthly_payment.round(2)

  prompt "Your monthly payment will be $#{monthly_payment}, and you will be paying your loan for #{loan_duration_months} months."

  loop do
    prompt "Would you like to calculate another loan? (Y/N)"
    answer = gets.chomp.downcase
    break if answer == 'y'
    if answer == 'n'
      keep_going = false
      prompt "Thank you for using the mortgage calculator!"
      break
    end
    prompt "Invalid reponse! Please enter Y or N."
  end
end
