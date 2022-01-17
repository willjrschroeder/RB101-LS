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
