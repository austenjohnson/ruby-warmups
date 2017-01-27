# Binary guessing game where cpu tells you a number is higher or lower from 1 - 25
def play_game
answer = true
random = rand(1..25)
  puts
  puts "The computer is going to generate a random number between 1 and 25. Guess the number."
  puts
  puts 'Type what you think the computer\'s number is now. Type 0 at anytime to exit.'
  puts
  while answer do
  print "> "
  guess = gets.chomp.to_i
  if guess == 0
    abort
  elsif guess > random
    puts
    puts 'Your guess was to high. Try again.'
    puts
  elsif guess < random 
    puts
    puts 'Your guess was to low. Try again.'
    puts
  else
    puts
    puts 'You guessed right!'
    puts
    answer = false
  end
  def play_again
  puts 'Would you like to play again? Type yes or no'
  puts
  play_game if gets.chomp.downcase == 'yes'
  end
  end
play_again
end
play_game