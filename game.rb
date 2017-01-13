# Build the odds or evens game

class Game

# greet the player
	puts "What's your name?"
	name = gets.chomp.downcase.capitalize
	puts
	puts "Hello, #{name} welcome to odds or evens!"
	puts
# explain to them how to play

	puts "You will choose odd or even and then 1 or 2 and if the computer picks the same number it is an even if you and the computer choose different numbers it's an odd. The winner is who chose odd or even correctly!"
	puts

# get user pick

	puts "Choose odd or even"
	type = gets.chomp.downcase
	puts
	puts "Pick a number"
	number = gets.chomp.to_i
	puts

# show cpu pick

  r = rand(1..2)
	puts "The computer chose: #{r}"
  puts

# evaluate if summed numbers are even or odd

# if (number + r) % 2 == 0
	if number == r
	num_eval = true
  else
	num_eval = false
  end

# ^^THIS IF/ELSE STATEMENT HELPS DECIDE WHO WON!!!!!!^^

# evaluate if the player picked the right odd or even

	if num_eval == true && type == "even"
		puts "You win! You chose evens!"
		puts
	elsif num_eval == false && type == "odd"
		puts "You win! You chose odds!"
		puts
	else
		puts "You lose! You chose #{type} Try again!"
		puts
		
	end
end
#    ^^MUST HAVE BOTH IF/ELSE STATEMENTS TO SEE WHO WON!!!!^^

# # BONUS: Ask player if they want to play again

def play_again
	puts 'Would you like to play again? Type y or n'
	play_game if gets.chomp.downcase == 'y'
		end