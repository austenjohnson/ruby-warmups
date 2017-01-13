puts "Press 1 to enter your age in Earth years, or 2 to enter the number of seconds"
selection = gets.chomp.to_i

if selection == 1
	puts "Enter number of earth years"
	earth_years = gets.chomp.to_f
	