puts "Type in a word to search the string for it."
def checker
str = "one two three four five six seven eight nine ten"
input = gets.chomp.downcase
  if(str =~ /#{input}/)
    puts "'#{input.capitalize}' is in the string."
  else
    puts "Sorry '#{input}' is not in the string. Try again"
    checker
  end
end
checker
