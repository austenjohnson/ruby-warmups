puts 'The game is Rock, Paper, Scissors, Spock, Lizard.'
puts
puts 'Scissors cuts Paper, Paper covers rock, Rock crushes Lizard, Lizard poisons Spock, Spock smashes Scissors, Scissors decapitate Lizard, Lizard eats Paper, Paper disproves Spock, Spock vaporizes Rock, Rock crushes Scissors.'
puts

loop do

  def comppick
    computer = rand(1..5)
    
    if computer == 1
      computer = 'rock'
    
    elsif computer == 2
      computer = 'paper'
    
    elsif computer == 3
      computer = 'scissors'
    
    elsif computer == 4
      computer = 'spock'
    
    else computer = 'lizard'
    end
  end

  puts "Choose rock, paper, scissors, spock, or lizard: "
  puts
  playerpick = gets.chomp.downcase

  if playerpick == 'scissors' && comppick == 'paper'
    puts "Player chose Scissors, and the computer chose Paper"
    puts
    puts "Scissors cut Paper. Player wins this round."
    puts
  
  elsif playerpick == 'paper' && comppick == 'rock'
    puts "Player chose Paper, and the computer chose Rock"
    puts
    puts "Paper covers Rock. Player wins this round."
    puts

  elsif playerpick == 'rock' && comppick == 'lizard'
    puts "Player chose Rock, and the computer chose Lizard"
    puts
    puts "Rock crushes Lizard. Player wins this round."
    puts

  elsif playerpick == 'lizard' && comppick == 'spock'
    puts "Player chose Lizard, and the computer chose Spock"
    puts
    puts "Lizard poisons Spock. Player wins this round."
    puts
  
  elsif playerpick == 'spock' && comppick == 'scissors'
    puts "Player chose Spock, and the computer chose Scissors"
    puts
    puts "Spock smashes Scissors. Player wins this round."
    puts

  elsif playerpick == 'scissors' && comppick == 'lizard'
    puts "Player chose Scissors, and the computer chose Lizard"
    puts
    puts "Scissors decapitate Lizard. Player wins this round."
    puts

  elsif playerpick == 'lizard' && comppick == 'paper'
    puts
    puts "Player chose Lizard, and the computer chose Paper"
    puts
    puts "Lizard eats Paper. Player wins this round."

  elsif playerpick == 'paper' && comppick == 'spock'
    puts "Player chose Paper, and the computer chose Spock"
    puts
    puts "Paper disproves Spock. Player wins this round."
  
  elsif playerpick == 'spock' && comppick == 'rock'
    puts "Player chose Spock, and the computer chose Rock"
    puts
    puts "Spock vaporizes Rock. Player wins this round."

  elsif playerpick == 'rock' && comppick == 'scissors'
    puts "Player chose Rock, and the computer chose Scissors"
    puts
    puts "Rock crushes Scissors. Player wins this round."
    puts

  elsif comppick == 'scissors' && playerpick == 'paper'
    puts "Player chose Paper, and the computer chose Scissors"
    puts
    puts "Scissors cut Paper. Computer wins this round."
    puts
  
  elsif comppick == 'paper' && playerpick == 'rock'
    puts "Player chose Rock, and the computer chose Paper"
    puts
    puts "Paper covers Rock. Computer wins this round."
    puts

  elsif comppick == 'rock' && playerpick == 'lizard'
    puts "Player chose Lizard, and the computer chose Rock"
    puts
    puts "Rock crushes Lizard. Computer wins this round."
    puts

  elsif comppick == 'lizard' && playerpick == 'spock'
    puts "Player chose Spock, and the computer chose Lizard"
    puts
    puts "Lizard poisons Spock. Computer wins this round."
    puts
  
  elsif comppick == 'spock' && playerpick == 'scissors'
    puts "Player chose Scissors, and the computer chose Spock"
    puts
    puts "Spock smashes Scissors. Computer wins this round."
    puts

  elsif comppick == 'scissors' && playerpick == 'lizard'
    puts "Player chose Lizard, and the computer chose Scissors"
    puts
    puts "Scissors decapitate Lizard. Computer wins this round."
    puts

  elsif comppick == 'lizard' && playerpick == 'paper'
    puts "Player chose Paper, and the computer chose Lizard"
    puts
    puts "Lizard eats Paper. Computer wins this round."
    puts

  elsif comppick == 'paper' && playerpick == 'spock'
    puts "Player chose Spock, and the computer chose Paper"
    puts
    puts "Paper disproves Spock. Computer wins this round."
    puts
  
  elsif comppick == 'spock' && playerpick == 'rock'
    puts "Player chose Rock, and the computer chose Spock"
    puts
    puts "Spock vaporizes Rock. Computer wins this round."
    puts

  elsif comppick == 'rock' && playerpick == 'scissors'
    puts "Player chose Scissors, and the computer chose Rock"
    puts
    puts "Rock crushes Scissors. Computer wins this round."
    puts
  else comppick == playerpick
    puts 'You tied!'
    puts
  end

  puts 'Would you like to play again? Please answer yes or no.'
  puts
  playagain = gets.chomp.downcase
  if playagain == 'no'
    break
  else 
    puts 'Okay. Enjoy your game!'
  end
end
comppick