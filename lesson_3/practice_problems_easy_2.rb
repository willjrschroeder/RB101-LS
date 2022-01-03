ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
additional_ages = { "Marilyn" => 22, "Spot" => 237 }
ages.merge!(additional_ages)

puts "Spot is here!" if ages["Spot"]
puts "Spot is here!" if ages.has_key?("Spot")
puts "Spot is here!" if ages.include?("Spot")

munsters_description = "The Munsters are creepy in a good way."

p munsters_description.swapcase
p munsters_description.capitalize
p munsters_description.downcase
p munsters_description.upcase

advice = "Few things in life are as important as house training your pet dinosaur."
puts advice.include?("Dino")

flintstones = ["Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles"]
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles) # This also works for arrays of strings
flintstones.push("Dino")
p flintstones

flintstones.concat(["Dino", "Happy"])
p flintstones

advice = "Few things in life are as important as house training your pet dinosaur."
p advice.slice((0..38))
p advice

statement = "The Flintstones Rock!"
counter = 0
statement.chars.each{ |char| puts "Number of t's: #{counter += 1}" if char == "t"}
p statement.count("t")

title = "Flintstone Family Members"
p title.center(40)
