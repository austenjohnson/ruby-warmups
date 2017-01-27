# Write a program that allows a user to enter input and then choose even or odd to print all of the words at that index
puts 'Enter some input: '
@input = gets.chomp.downcase

def convert_to_arr
  arr = @input.gsub(/\W+/, ',')
  @arr2 = arr.split(",")
  odd_or_even
end

def odd_or_even
  puts 'Now choose odd or even to print the odd or even indexes. Or type a number to print that index'
  @choice = gets.chomp.downcase
  if @choice == 'odd'
    odd_values
  elsif @choice == 'even'
    even_values
  elsif @choice == 'choose index'
    choose_index
  else
    puts 'Your choice isn\'t an option. Try again.'
    convert_to_arr
  end
end


def odd_values
  puts @arr2.values_at(* @arr2.each_index.select {|i| i.odd?})
end

def choose_index
  x = gets.chomp.to_i
  updated_array = @arr2[x]
  p updated_array
end

def even_values
  puts @arr2.values_at(* @arr2.each_index.select {|i| i.even?})
end

convert_to_arr
