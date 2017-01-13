# Write a method that translates a text to Pig Latin and back.

# English is transated to Pig Latin by taking the first letter of every word and moving it to the end of the word and adding 'ay'. "The quick brown fox" becomes "Hetay uickqay rownbay oxfay".

arr2 = []
pig = []

puts 'Type in a sentence to convert it to Pig Latin: '
start = gets.chomp
arr = start.downcase.split(/ /)
arr.each do |x|
  pig << x[1..75] + x[0] + 'ay'
end

pig_latin = pig.join(' ').capitalize
to_string = pig_latin.downcase.split(/ /)

to_string.each do |y|
  y.chop!
  y.chop!
  arr2 << y[-1]
  y.chop!
  arr2 << y + ' '
end

string = arr2.join.capitalize
string.chop!

p "Pig latin: " + pig_latin
p "Regular string: " + string