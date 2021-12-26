def prompt(message)
  puts "=> #{message}"
end

def number?(num)
  if num.to_f.to_s == num
    num = num.to_f
    return true
  elsif num.to_i.to_s == num
    num = num.to_f
    return true
  end
  false
end

loan_amount = ''
annual_percentage_rate = ''
loan_duration_years = ''

loop do
  prompt "Please enter the loan amount:"
  loan_amount = gets.chomp
  break if number?(loan_amount)
  prompt "Invalid input! Please enter the loan amount in an integer or float format."
end

loop do
  prompt "Please enter the APR (ex. 5.2% -- do not include the % sign)"
  annual_percentage_rate = gets.chomp
  break if number?(annual_percentage_rate)
  prompt "Invalid input! Please enter the APR in an integer or float format!"
end

loop do 
  prompt "Please enter the loan duration in years:"
  loan_duration_years = gets.chomp
  break if number?(loan_duration_years)
  prompt "Invalid input! Please enter the loan duration in an integer or float format!"
end


