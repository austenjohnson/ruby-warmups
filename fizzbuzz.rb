100.times.each do |x|
	if x % 3 == 0 && x % 5 == 0
		puts 'FizzBuzz'
	elsif x % 3 == 0
		puts 'Fizz'
	elsif x % 5 == 0
		puts 'Buzz'
	else puts x
	end
end

##               ^^^^^DOES NOT WORK^^^^^




# Write A program that prints the number 1 to 100
# def fizzbuzz

# 1.upto(100) do |number|
# # For the multiples of both print "FizzBuzz"
#   if number % 3 == 0 && number % 5 == 0
#   	puts 'FizzBuzz'
# # For the multiples of three print "Fizz"
#   elsif number % 3 == 0 
# 	  puts 'Fizz'
# # For the multiples of five print "Buzz"
#   elsif number % 5 == 0
#   	puts 'Buzz'
#   else
#   	puts number
#   end
# end
# end

# fizzbuzz

#             ^^^DOES WORK^^^