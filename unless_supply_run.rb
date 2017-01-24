class NewGreeting
  puts "What's your name?"
  name = gets.chomp.downcase
  unless name == 'michone' || name == 'daryl' || name == 'rick'
    puts 'Go and make a supply run.'
  else
    puts "Hello, #{name.capitalize}"
  end
end