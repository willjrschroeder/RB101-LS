def select_fruit(foods)
  counter = 0
  food_list = foods.keys
  fruit_hash = {}
  loop do
    current_food = food_list[counter]
    if foods[current_food] == "Fruit"
      fruit_hash[current_food] = 'Fruit'
    end
    counter += 1
    break if counter >= food_list.size
  end
  fruit_hash
end

produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

p select_fruit(produce) # => {"apple"=>"Fruit", "pear"=>"Fruit"}

def double_numbers!(numbers)
  counter = 0
  loop do
    current_number = numbers[counter]
    numbers[counter] *= 2
    counter += 1
    break if counter >= numbers.size
  end
  numbers
end

my_numbers = [1, 4, 3, 7, 2, 6]
p double_numbers!(my_numbers) # => [2, 8, 6, 14, 4, 12]
# mutated
p my_numbers

def double_odd_indices(numbers)
  doubled_array = []
  counter = 0
  loop do
    current_number = numbers[counter]
    if counter.odd?
      doubled_array << current_number * 2
    else
      doubled_array << current_number
    end
    counter += 1
    break if counter >= numbers.size
  end
  doubled_array
end

my_numbers = [1, 4, 3, 7, 2, 6]
p double_odd_indices(my_numbers)  # => [2, 4, 6, 14, 2, 6]
# not mutated
p my_numbers                      # => [1, 4, 3, 7, 2, 6]

def multiply(numbers, multiplier)
  multiplied_numbers = []
  counter = 0
  loop do
    current_number = numbers[counter]
    multiplied_numbers << current_number * multiplier
    counter += 1
    break if counter >= numbers.size
  end
  multiplied_numbers
end

my_numbers = [1, 4, 3, 7, 2, 6]
p multiply(my_numbers, 3) # => [3, 12, 9, 21, 6, 18]
