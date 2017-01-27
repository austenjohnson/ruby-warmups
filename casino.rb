# Make a casino based in Ruby. 
def wallet
  puts 'How much money would you like to deposit into the machine today?'
  @money = gets.chomp.to_i
  puts "What game would you like to play? Slots or Blackjack?"
  game = gets.chomp.downcase
  if game == 'slots'
    puts 'Okay, your first spin will start shortly.'
    slot_game_play
  else game == 'blackjack'
    puts 'Okay, we will deal your first hand shortly.'
    blackjack_deck
  end
end

def slot_game_play
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
  slot_winnings_generator

  winning_values = @calculation_of_winnings

  @money += winning_values

  if @calculation_of_winnings >= 1
    puts
    puts "Congratulations! You won $#{winning_values}"
    puts "Your new balance is $#{@money}"
    play_game_again
  else
    puts
    puts "You lost. Sorry, try again."
    puts "Your new balance is $#{@money}"
    play_game_again
  end
end

def slot_winnings_generator
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

def play_game_again
  puts "Would you like to play again? Type yes to continue."
  play_again = gets.chomp.downcase
  play_again == 'yes' ? slot_game_play : puts("Okay. Game over, thanks for playing! Your final cash out balance is $#{@money}")
end
# wallet



def blackjack_deck
  @deck = (1..56).to_a.shuffle
  @your_hand = [@deck.pop, @deck.pop]
  p @your_hand
end

def card_identification
  card_suit = 
  if @your_hand == (1..14)
    return " of hearts"
  elsif @your_hand == (15..28)
    return " of clubs"
  elsif @your_hand == (29..42)
    return " of diamonds"
  elsif @your_hand == (43..56)
    return " of spades"
  end
    if @your_hand == 11 || 25 || 39 || 53
      return 'Jack' + card_suit
    elsif @your_hand == 12 || 26 || 40 || 54
      return 'Queen' + card_suit
    elsif @your_hand == 13 || 27 || 41 || 55
      puts 'King' + card_suit
    elsif @your_hand == 14 || 28 || 42 || 56
      puts 'Ace' + card_suit
    end
end
blackjack_deck