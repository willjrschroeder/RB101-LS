# Turn this array into a hash where the names are the keys and the values are the positions in the array.
flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
flintstones_hash = {}

flintstones.each_with_index do |name, index|
  flintstones_hash[name] = index
end

flintstones_nested_array = flintstones.map do |name|
  [name, flintstones.find_index(name)]
end
flintstones_mapped_hash = flintstones_nested_array.to_h

p flintstones_mapped_hash
p flintstones_hash

# Add up all the ages from the hash
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

summed_ages = 0
ages.each do |name, age|
  summed_ages += age
end

p summed_ages

ages_array = ages.each_with_object([]) do |(name, age), array|
  array << age
end
p ages_array
p ages_array.sum

p ages_array.reduce(:+)


# In the age hash remove people with age 100 and greater.
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

ages.select! do |_, age|
  age < 100
end

p ages

# Pick out the minimum age from our current Munster family hash:
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

p ages.values.min

# In the array: Find the index of the first name that starts with "Be"
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

index = flintstones.find_index do |x| 
  x.match?(/Be/)
end

p flintstones.index {|x| x[0,2] == "Be"}
p index

# Amend this array so that the names are all shortened to just the first three characters:
flintstones.map! do |name|
  name[0,3]
end

p flintstones

#Create a hash that expresses the frequency with which each letter occurs in this string:
statement = "The Flintstones Rock"

letter_frequencies = {}
statement.chars.each do |char|
  if letter_frequencies[char]
    letter_frequencies[char] += 1
  else
    letter_frequencies[char] = 1
  end
end

p letter_frequencies
