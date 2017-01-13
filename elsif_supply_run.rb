class NewGreeting
	print 'What\'s your name?'
	name = gets.chomp.downcase
	if name == 'michone' || name == 'daryl' || name == 'rick'
		puts "Hello #{name.capitalize}"
	else
		puts 'Go and make a supply run.'
	end
end

# UNLESS STATEMENT 

unless name == 'michone' || name == 'daryl' || name == 'rick'
	puts 'Go and make a supply run.'
else
	puts 'Hello, #{name.capitalize}'
end

# CASE STATEMENT

case name
	when "rick"
		puts 'Hello, #{name.capitalize}'
	when "michone"
		puts 'Hello, #{name.capitalize}'
	when "daryl"
		puts 'Hello, #{name.capitalize}'
	else
		puts "I'm sorry, you aren't from the Walking Dead and I only talk to famous people."
end
