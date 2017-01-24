# Write a method that takes a list of strings and prints them, one per line, in a rectangular frame. For example the list ["Hello", "World", 'in', 'a', 'frame'] gets printed as 

# *********
# * Hello *
# * World *
# * in    *
# * a     *
# * frame *
# *********

def frame_builder 
  puts "Enter some words and I will print them with a border of *."
  puts

  string = gets.chomp
  puts
  
  split_words = string.split(" ")
  @longest_word = []

  split_words.each do |x|
    @longest_word << x.length
  end

  @longest_word = @longest_word.sort![-1] + 4
  puts "*" * @longest_word

  split_words.each do |x|
    if x.length == @longest_word
      puts "* #{x} *"
    else
      @diff = @longest_word - x.length
      @spaces = @diff - 3
      puts "* "+ "#{x}" + " " * @spaces + "*"
    end
  end

  puts "*" * @longest_word
  
end
frame_builder