# Write a program that can calculate the Hamming difference between two DNA strands.

# A mutation is simply a mistake that occurs during the creation or
# copying of a nucleic acid, in particular DNA. Because nucleic acids are
# vital to cellular functions, mutations tend to cause a ripple effect
# throughout the cell. Although mutations are technically mistakes, a very
# rare mutation may equip the cell with a beneficial attribute. In fact,
# the macro effects of evolution are attributable by the accumulated
# result of beneficial microscopic mutations over many generations.

# The simplest and most common type of nucleic acid mutation is a point
# mutation, which replaces one base with another at a single nucleotide.

# By counting the number of differences between two homologous DNA strands
# taken from different genomes with a common ancestor, we get a measure of
# the minimum number of point mutations that could have occurred on the
# evolutionary path between the two strands.

# This is called the 'Hamming distance'.

# It is found by comparing two DNA strands and counting how many of the
# nucleotides are different from their equivalent in the other string.

#     GAGCCTACTAACGGGAT
#     CATCGTAATGACGGCCT
#     ^ ^ ^  ^ ^    ^^

# The Hamming distance between these two DNA strands is 7.

# # Implementation notes

# The Hamming distance is only defined for sequences of equal length. This means
# that based on the definition, each language could deal with getting sequences
# of equal length differently.


# ham1 = "GAGCCTACTAACGGGAT"
# ham2 = "CATCGTAATGACGGCCT"

# x = ham1.each_char {|c| puts c, ' '}
# y = ham2.each_char {|d| puts d, ' '}

# if ham1.each_char == ham2.each_char

# elsif ham1.each_char != ham2.each_char
#   puts "Not equal"
# end
require 'pry'

def hamming
  ham1 = "GAGCCTACTAACGGGAT"
  ham2 = "CATCGTAATGACGGCCT"
  fin = []
  if ham1.length == ham2.length
    chk1 = ham1.split(//)
    chk2 = ham2.split(//)
  else
    puts "Not the same length."
  end
  # binding.pry
  @zipped_arr = chk1.zip(chk2)
  # binding.pry

  until @zipped_arr.length == 0
    if @zipped_arr[0][0] == @zipped_arr[0][1]
      fin << @zipped_arr[0][0]
      @zipped_arr.shift
    else
      fin << 'x'
      @zipped_arr.shift
      # @zipped_arr.shift
    end
  end
  hamming = fin.join("")
  p "Every match is moved into the 'Hamming String fin:' and non matches get an x"
  p "Hamming String one: #{ham1}"
  p "Hamming String two: #{ham2}"
  p "Hamming String fin: #{hamming}"
  p 
end
hamming