# Write a method that computes the running total of an array. Allow for the input of integers and strings. Ask the user to enter exit when they want to exit. Bonus: Ask them if they want to do all the math things and add it to the total

puts 'Enter input to add it to an array. The numbers will be added together for a running total.'
puts

@numbers = []

def nums
  while true
    puts "Enter numbers now. Type 0 to do math functions."
    input = gets.chomp.to_i
    puts
    break if input == 0
    @numbers << input
    puts "Your array: #{@numbers}"
    puts
    puts "The total of the numbers in your array is: #{@numbers.inject(:+)}"
    @total = @numbers.inject(:+)
  end
  math
end

def math
  while true
    puts 'Choose what type of math you want done. (Mul)tiplication, (sub)traction, (div)ision, or type exit for words.'
    mathtype = gets.chomp
    puts
    break if mathtype.downcase == 'exit'
    if mathtype.downcase == 'multiplication' || mathtype.downcase == 'mul'
      mtotal = @numbers.inject(:*)
      puts "Your multiplied total is #{mtotal}"
      puts
    elsif mathtype.downcase == 'subtraction' || mathtype.downcase == 'sub'
      stotal = @numbers.inject(:-)
      puts "Your subtracted total is #{stotal}"
      puts
    elsif mathtype.downcase == 'division' || mathtype.downcase == 'div' 
      dtotal = @numbers.inject(:/)
      puts "Your divided total is #{dtotal}"
      puts
    end
  end
words
end

def words
  while true
    puts "Enter words now or type 'x' to quit."
    words = gets.chomp
    puts
    break if words.downcase == 'x'
    @numbers << words
    puts "Your array is now: #{@numbers}"
    puts
  end
  puts "Your final array is: #{@numbers}"
  puts
  puts "Your final number total is: #{@total}"
end
nums