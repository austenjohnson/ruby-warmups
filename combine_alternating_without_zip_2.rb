# Write a method that combines two arrays by alternatingly taking elements, e.g. [a,b,c], [1,2,3] -> [a,1,b,2,c,3]
require 'pry'
@a = ['A',"B",'C', 'D']
@b = [1,2,3]
@alternated_array = []
@almost_done = []

# @alternated_array = a.zip(b).flatten.join(", ")

def alternating
  @alternated_array = @a.push(@b).join.split(//)
  @counter = 0
  while @counter != @alternated_array.length / 2
    @almost_done << @a[@counter]
    @almost_done << @b[@counter]
    @counter += 1
    binding.pry
  end
  @done = @almost_done.join(", ")
end
alternating
p @done