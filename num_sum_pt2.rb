# Write a program that asks the user for a number n and prints the sum of the numbers 1 to n

def num_sum
  puts "Enter a number greater than 1 and I will sum the numbers in between 1 to that number:"
  num = gets.chomp.to_i

  if num < 1
    puts "Please enter a number greater than 1"
    num_sum
  else
    counter = (1..num)
    new_num = 0 #dump variable

    # Now modify the previous program so that only multiples of 3 and 5 are included in the sum

    counter.each do |x|
    	if x % 3 == 0
    		puts "Hey, you hit your modulus three IF clause"
      new_num = new_num + x
    elsif x % 5 == 0
    	puts "Hey, you hit your modulus five IF clause"
    	new_num = new_num + x
    	end
    end

  end
  puts new_num
end

num_sum