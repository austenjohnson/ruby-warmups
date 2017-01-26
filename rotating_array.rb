# Write a method that rotates an array by k elements. For example [1,2,3,4,5,6] rotated by two becomes [3,4,5,6,1,2]. Try solving this without creating a copy of the array
require 'pry'

puts "Enter some input to fill it into an array to be able to manipulate it."
@arr = gets.chomp
@arr = @arr.split(' ')
puts "Your initial array: #{@arr}"

def rotator
  until @input == 0
    puts "\nEnter the number of spaces you want to move the values. Enter 0 to exit the program.\n"
    @input = gets.chomp.to_i
    @arr = @arr.rotate!(@input)
    puts "\nYour new array: #{@arr}\n"
  end
end
rotator