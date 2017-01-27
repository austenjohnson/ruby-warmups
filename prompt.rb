# Example of how to make terminal look like a prompt
prompt = "> "
  puts "The computer is going to generate a random number between 1 and 25. Guess the number."
  puts
  ran = rand(1..25)
  puts 'Type what you think the computer\'s number is now.'
  puts
  print prompt

while user_input = gets.chomp.to_i # loop while getting user input
  case
  when user_input < ran
    puts "Your guess was to low."
    print prompt # print the prompt, so the user knows to re-enter input
    # break # make sure to break so you don't ask again
  when user_input > ran
    puts "Your guess was to high"
    print prompt # print the prompt, so the user knows to re-enter input
    # break # and again
  else
    puts "You guessed it!"
    break
  end
end