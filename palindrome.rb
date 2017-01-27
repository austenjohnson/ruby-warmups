# Write a method that gives the palindrome of anything entered.
puts "Enter A word for the computer to return it's palindrome."

def palindrome
  string = gets.chomp
  new_string = string + string.reverse[1..-1]
end

p palindrome