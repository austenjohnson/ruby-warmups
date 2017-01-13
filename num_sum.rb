# Write a program that asks the user for a number n and prints the sum of the number 1 to n

def sum_num
# Asks for numbers
	puts
	puts 'This program is going to take the input and add every number one by one together until you get a sum!'
	puts
	puts "For example if you choose 10 it will do 1 + 2 = 3, and 3 + 3 = 6, and 6 + 4 = 10 etc...."
	puts
	puts "Enter your number now."
	num = gets.chomp.to_i
	puts

	

	if num < 1
		puts 'You entered A number under 1. The program will restart. Please try again.'
		sum_num
	else 
		# Prints sum of 1 to num
			counter = (1..num)
			new_num = 0

			counter.each do |num|

				new_num = new_num + num

			end	

	end
	puts "The sum of 1 to #{num} is #{new_num}", " "
end
sum_num