# Write a method that computes the running total of an array. Allow for the input of integers and strings. Ask the user to enter exit when they want to exit. Bonus: Ask them if they want to do all the math things and add it to the total


puts 'Enter input to add it to an array. The numbers will be added together for a total. Type exit to exit'
puts

@numbers = []

def sums
  while true
    puts "Enter numbers now. Type 0 to enter numbers"
    input = gets.chomp.to_i
    puts
    break if input == 0
    @numbers << input
    puts "Your array: #{@numbers}"
    puts
    puts "The total of the numbers in your array is: #{@numbers.inject(:+)}"
    puts
    total = @numbers.inject(:+)
  end

  # puts 'Choose what type of math you want done.'
  # mathtype = gets.chomp
  # if mathtype ==

  while true
    puts
    puts "Enter words now or type exit to quit."
    words = gets.chomp
    puts
    break if words.downcase == 'exit'
    @numbers << words
    puts "Your array is now: #{@numbers}"
  end
  puts "Your final array is: #{@numbers}"
  puts "Your final number total is: #{total}"
end

sums