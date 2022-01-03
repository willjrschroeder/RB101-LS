str = "The Flintstones Rock!"

10.times do |number|
  puts (" " * number) + str
end

puts "the value of 40 + 2 is " + (40 + 2).to_s
puts "the value of 40 + 2 is #{40 + 2}"
