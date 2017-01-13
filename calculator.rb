def numbers
	puts "Enter a number"
	number = gets.chomp.to_i

	if "#{@number}" % 2 == 0
		num = 'even'
	else
		num = 'odd'
	end

puts num
end

# numbers



# def math
# 	puts 'Enter a number'
# 	number1 = gets.chomp.to_i

# 	puts 'Enter another number'
# 	number2 = gets.chomp.to_i

# 	@math = number1 + number2
# 	puts "#{number1} + #{number2} = #{@math}"
# end
# math



# def subtraction
# 	puts 'Enter a number'
# 	number1 = gets.chomp.to_i

# 	puts 'Enter another number'
# 	number2 = gets.chomp.to_i

# 	@math = number1 - number2
# 	puts "#{number1} - #{number2} = #{@math}"
# end
# subtraction

# def division
# 	puts 'Enter a number'
# 	number1 = gets.chomp.to_i

# 	puts 'Enter another number'
# 	number2 = gets.chomp.to_i

# 	@math = number1 / number2
# 	puts "#{number1} / #{number2} = #{@math}"
# end
# division

# def square
# 	puts 'Enter a number'
# 	number1 = gets.chomp.to_i

# 	puts 'Enter another number'
# 	number2 = gets.chomp.to_i

# 	@math = number1 ** number2
# 	puts "#{number1} to the power of #{number2} = #{@math}"
# end