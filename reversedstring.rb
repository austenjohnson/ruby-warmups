# Reverse a string without using .reverse
require 'pry'
# def reverse(string)
#    reversed_string = ""

#    i = 0
#    while i < string.length
#     reversed_string = string[i] + reversed_string
#     i += 1
#    end

#   return reversed_string
# end

# p reverse("helter skelter")

# puts 'reverse this string'.chars.reduce { |x,y| y + x }

def reverse(string)

x = string.length - 1
binding.pry
 while x >= 0

  print  "#{string[x]}"

  x -= 1

  end
end
reverse("reverse this string")

# public
# def reverse_string
#   str_array = self.split(//)
#   reversed_array = []
#   total_count = str_array.count
#   total_count.downto(1) { |i| reversed_array << str_array[i -1] }
#   reversed_array.join
# end

# a = "reverse this string"
# puts a.reverse_string