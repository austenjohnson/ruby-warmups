# Write a method that rotates an array by k elements. For example [1,2,3,4,5,6] rotated by two becomes [3,4,5,6,1,2]. Try solving this without creating a copy of the array

require 'pry'


puts "Inter some input to fill it into an array to be able to manipulate it."
puts 
@arr = gets.chomp
@arr = @arr.split(' ')
puts
puts "Your initial array: #{@arr}"

def rotator
  until @input == 0
    puts
    puts "Enter the number of spaces you want to move the values. Enter 0 to exit the program."
    puts
    @input = gets.chomp.to_i
    puts
    @arr = @arr.rotate!(@input)
    puts "Your new array: #{@arr}"
  end
end
rotator