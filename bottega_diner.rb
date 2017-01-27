# Write a restaraunt with menu items and prices (work as a group) (working with nested hashes)
puts 'Welcome to Bottega Diner, please place your order.'
puts

menu = {
  "Entrees:" => {
    "Sandwich" => 10,
    "Spaghetti" => 9,
    "Pizza" => 9.5
  },
  "Sides:" => {
    "Breadsticks" => 4,
    "Salad" => 3,
    "Soup" => 4
  }
}

menu.each do |entrees, sides|
  puts entrees
  sides.each do |item, price|
    puts "#{item}"
    puts
  end
end

puts "Choose an Entree."
puts
choice = gets.chomp
puts

if choice.downcase == "sandwich"
  meal_price = menu["Entrees:"]["Sandwich"]  
  puts "Yum. That costs $#{meal_price}" 
  puts
elsif choice.downcase == "spaghetti"
  meal_price = menu["Entrees:"]["Spaghetti"]
  puts "The spaghetti costs $#{meal_price}"
  puts
elsif choice.downcase == "pizza"
  meal_price = menu["Entrees:"]["Pizza"]
  puts "Pizza costs $#{meal_price}"
  puts
else
  puts "That is not an entree. Please choose an entree."
  puts
end

puts "Okay, your entree is #{choice.capitalize} now you get to choose two sides"
puts
puts "Choose your first side"

side1 = gets.chomp
puts
puts "Your first side is #{side1.capitalize}. What would you like for your second?"
puts
side2 = gets.chomp
puts
puts "Your sides are #{side1.capitalize} and #{side2.capitalize}"
puts
  if side1.downcase + side2.downcase == "breadsticks" + "salad" || side1.downcase + side2.downcase == "salad" + "breadsticks"
    side1_price = menu["Sides:"]["Breadsticks"]
    side2_price = menu["Sides:"]["Salad"]
    sides_total = side1_price + side2_price
    puts "You chose Breadsticks and Salad. That will cost $#{sides_total}"
    puts
  elsif side1.downcase + side2.downcase == "breadsticks" + "soup" || side1.downcase + side2.downcase == "soup" + "breadsticks"
    side1_price = menu["Sides:"]["Breadsticks"]
    side2_price = menu["Sides:"]["Soup"]
    sides_total = side1_price + side2_price
    puts "You chose Breadsticks and Soup. That will cost $#{sides_total}"
    puts
  elsif side1.downcase + side2.downcase == "salad" + "soup" || side1.downcase + side2.downcase == "soup" + "salad"
    side1_price = menu["Sides:"]["Salad"]
    side2_price = menu["Sides:"]["Soup"]
    sides_total = side1_price + side2_price
    puts "You chose Salad and Soup. That will cost $#{sides_total}"
    puts
  elsif side1.downcase + side2.downcase == "soup" + "soup"
    side1_price = menu["Sides:"]["Soup"]
    side2_price = menu["Sides:"]["Soup"]
    sides_total = side1_price + side2_price
    puts "You chose Soup for both sides. That will cost $#{sides_total}"
    puts
  elsif side1.downcase + side2.downcase == "salad" + "salad"
    side1_price = menu["Sides:"]["Salad"]
    side2_price = menu["Sides:"]["Salad"]
    sides_total = side1_price + side2_price
    puts "You chose Salad for both sides. That will cost $#{sides_total}"
    puts
  elsif side1.downcase + side2.downcase == "breadsticks" + "breadsticks"
    side1_price = menu["Sides:"]["Breadsticks"]
    side2_price = menu["Sides:"]["Breadsticks"]
    sides_total = side1_price + side2_price
    puts "You chose Breadsticks for both sides. That will cost $#{sides_total}"
    puts
  else
    puts "You didn't choose a side we offer. Sorry."
  end
total = meal_price + sides_total
puts "Okay, so for #{choice} with #{side1} and #{side2} on the side it costs $#{total}."
puts