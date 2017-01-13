# Write three methods that compute the sum of the numbers in an array: using a for-loop, a while-loop and recursion

array = [4, 5, 1, 7, 33, 8]

# For loop

i = 0
addition = 0

for i in array
  addition += i 
end
puts "The total using your for loop is: #{addition}"

# While loop

counter = array.length
total = 0

while counter > 0
  total += array.pop

  counter -= 1
end
puts "The total using the while loop is: #{total}"