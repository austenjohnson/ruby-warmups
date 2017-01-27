# Write a program that asks the user for a number n and prints the sum of the numbers 1 to n
def math
  puts 'Enter a number and the computer will give you the sum or product of 1 to your number.'
  puts
  puts "For example if you choose sum and your number is 10 it will do 1 + 2 = 3, and 3 + 3 = 6, and 6 + 4 = 10 etc...."
  puts
  puts "Enter your number now."
  num = gets.chomp.to_i
  puts
  puts 'Now choose sum or product.'
  choice = gets.chomp

  if num < 1
    puts 'You entered A number under 1. The program will restart. Please try again.'
    math

  elsif num > 999
    puts 'You entered a number over 1000. The output might freeze your computer. Choose a lower number.'
    math

  elsif choice == 'sum'
    # Prints sum of 1 to num
    counter = (1..num)
    new_num = 0

    counter.each do |num|

      new_num = new_num + num
      puts "#{new_num}"
    end

  elsif choice == 'product'
    counter = (1..num)
    new_num = 1

    counter.each do |num|

      new_num = new_num * num
      puts "#{new_num}"
    end
  puts "The #{choice} of 1 to #{num} is #{new_num}"
  end
end

math