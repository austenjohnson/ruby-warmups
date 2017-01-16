def initializer
  puts 'How much money would you like to deposit into the machine today?'
  @money = gets.chomp.to_i
  game_play
end

def game_play
  wheel_symbols = ["Cherry", "Seven", "Orange", "Jackpot", "Bell"]
  puts "Total money you have: $#{@money}"
  puts
  puts "What amount would you like your bet for this spin to be?"
  @bet_amount = gets.chomp.to_i
  puts "Okay, your bet amount is $#{@bet_amount}. The game will spin now."

  @money -= @bet_amount

  @first_spin_symbol = wheel_symbols.sample
  @second_spin_symbol = wheel_symbols.sample
  @third_spin_symbol = wheel_symbols.sample

  puts "Your spin was: \n #{@first_spin_symbol} - #{@second_spin_symbol} - #{@third_spin_symbol}"
  winnings_generator

  winning_values = @calculation_of_winnings

  @money += winning_values

  if @calculation_of_winnings >= 1
    puts "Congratulations! You won $#{winning_values}"
    puts "Your new balance is $#{@money}"
    puts "Would you like to play again? Type yes to continue."
    play_again = gets.chomp.downcase
    play_again == 'yes' ? game_play : puts("Okay. Game over, thanks for playing! Your finale cash out balance is #{@money}")
  else
    puts "You lost. Sorry, try again."
    puts "Your new balance is $#{@money}"
    puts "Would you like to play again? Type yes to continue."
    play_again = gets.chomp.downcase
    play_again == 'yes' ? game_play : puts("Okay. Game over, thanks for playing! Your finale cash out balance is #{@money}")
  end
end

def winnings_generator
  if @first_spin_symbol == "Jackpot" && @second_spin_symbol == "Jackpot" && @third_spin_symbol == "Jackpot"
    @calculation_of_winnings = @bet_amount * 100
  elsif @first_spin_symbol == @second_spin_symbol && @second_spin_symbol == @third_spin_symbol
    @calculation_of_winnings = @bet_amount * 3
  elsif
    @first_spin_symbol == @second_spin_symbol || @second_spin_symbol == @third_spin_symbol || @third_spin_symbol == @first_spin_symbol
    @calculation_of_winnings = @bet_amount * 2
  else
    @calculation_of_winnings = @bet_amount * 0
  end
end
initializer
