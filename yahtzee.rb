# Objective
# Yahtzee
#   To accumulate the most points by rolling certain combinations of dice that add to your total score.
# Gameplay
#   See rules and gameplay at the following link...
#   http://www.hasbro.com/common/instruct/yahtzee.pdf
# Pseudocode
#   Yahtzee should have several classes:

#     Player - 
#       Each instance of a player class will represent each player playing the game.

#     ScoreCard -
#       Each instance of ScoreCard will represent the scorecard of a Specific player.
#     Game -
#       Each instance of Game will represent an entire game of yatzee. This class will execute a game, move the players through their turns, and determine when the game is over and who the winner is. 
# ##########
# Suggested Steps:
#     1. roll Method and Game Class
#       a. Begin with building the Game class. Inside the Game class, create a roll method. The roll method should randomly create an array of five numbers with values between 1 and 6. This represents the values on the five dice being rolled.
#       b. After you can successfully roll the five dice. Modify the method so that you can recieve an optional parameter. The optional parameter should be an array of the dice values that a player chose to keep from the previous roll. Modify the method so that the values passed in are kept and only the remaining dice are rolled.
#         For example:

#           The players first roll is [4,4,1,4,6]
#           The player chose to keep the three dice with the value of 4, so the next time the roll method should be passed the array of [4,4,4] 
#           The output of the roll method should now include the three 4s and look something like this: [4,4,4,2,3] (only two new values are randomly generated in the roll)
#     2. turn Method
#       In the Game class, create a turn method. This method will execute all the rolls that make up a player's turn. This should include all the prompts to the player and get all the inputs that are needed from the player regarding the dice they wish to retain for the next roll. Think about the user experience in the terminal when you are writing this method. *** Remember that the player can roll a maximum of three times but they may choose to roll only once or twice if that is what they choose.
#       (For now the turn method should just return the final array that will eventually be scored. We will have to return to this method and update it once we have created and fleshed out Player and ScoreCard classes.)
# => Bonus score added later for 65 point plus 35...

require 'terminal-table'
@rows1 = []
@rows2 = []
@rows3 = []
@rows4 = []
@rows5 = []
puts @table
@p1 = []
@p2 = []
@p3 = []
@p4 = []
@p5 = []
def initializer
  puts 'Game instructions here... & How many players? Type a number 1 - 5'
  player_count = gets.chomp.to_i
  if player_count == 1
    @table1 = Terminal::Table.new :title => "Yahtzee", :headings => ['Player 1', 'Score'], :rows => @rows1
    roller
  elsif player_count == 2
    @table1 = Terminal::Table.new :title => "Yahtzee", :headings => ['Player 1', 'Score'], :rows => @rows1
    @table2 = Terminal::Table.new :title => "Yahtzee", :headings => ['Player 2', 'Score'], :rows => @rows2
    roller
  elsif player_count == 3
    @table1 = Terminal::Table.new :title => "Yahtzee", :headings => ['Player 1', 'Score'], :rows => @rows1
    @table2 = Terminal::Table.new :title => "Yahtzee", :headings => ['Player 2', 'Score'], :rows => @rows2
    @table3 = Terminal::Table.new :title => "Yahtzee", :headings => ['Player 3', 'Score'], :rows => @rows3
    roller
  elsif player_count == 4
    @table1 = Terminal::Table.new :title => "Yahtzee", :headings => ['Player 1', 'Score'], :rows => @rows1
    @table2 = Terminal::Table.new :title => "Yahtzee", :headings => ['Player 2', 'Score'], :rows => @rows2
    @table3 = Terminal::Table.new :title => "Yahtzee", :headings => ['Player 3', 'Score'], :rows => @rows3
    @table4 = Terminal::Table.new :title => "Yahtzee", :headings => ['Player 4', 'Score'], :rows => @rows4
    roller
  elsif player_count == 5
    @table1 = Terminal::Table.new :title => "Yahtzee", :headings => ['Player 1', 'Score'], :rows => @rows1
    @table2 = Terminal::Table.new :title => "Yahtzee", :headings => ['Player 2', 'Score'], :rows => @rows2
    @table3 = Terminal::Table.new :title => "Yahtzee", :headings => ['Player 3', 'Score'], :rows => @rows3
    @table4 = Terminal::Table.new :title => "Yahtzee", :headings => ['Player 4', 'Score'], :rows => @rows4
    @table5 = Terminal::Table.new :title => "Yahtzee", :headings => ['Player 5', 'Score'], :rows => @rows5
    roller
  else
    puts 'Stop screwing with me.'
    initializer
  end
end

def roller
  x = 0
  while x < 3
    x += 1
    'Okay player one\'s first turn.'
    puts @table1
    puts @table2
    puts @table3
    puts @table4
    puts @table5
    @dice = []
    5.times do
      @die = rand(1..6)
      @dice << @die
    end
    i = 0
    while i < 5
      i += 1

      puts "#{@dice} "
  # demo_array_counter = @dice.count
  # p demo_array = (1..demo_array_counter).to_a
  puts "Your roll is on top, the placeholder is on bottom. Select the place you would like to keep one at a time. Press X to re roll"
  selector = gets.chomp.to_i
  @saved_dice = []
  
  if selector == 1
    @saved_dice << @dice.delete_at(0)
  elsif selector == 2
    @saved_dice << @dice.delete_at(1)
  elsif selector == 3
    @saved_dice << @dice.delete_at(2)
  elsif selector == 4
    @saved_dice << @dice.delete_at(3)
  elsif selector == 5
    @saved_dice << @dice.delete_at(4)
  else
    break
  end
  
  p @dice
  demo_array_counter = @dice.count
  p demo_array = (1..demo_array_counter).to_a

end
end
end

initializer