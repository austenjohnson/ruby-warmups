# Write a program that prints a multiplication table for numbers up to 12.
#      - warn the user if they pick a number higher than 100 on the product side. (warning, blah blah blah , do you want to continue? y/n)
#      - disable multiplying the product at a certain breakpoint TBD by you.

# 1.upto(12) { |a| 1.upto(12) {|b| print "%3d%s" % [(a*b),b==1? "|" : ""]} ;
# puts "\n"+(a==1 ? '-'*37 : "")}

def print_multiplication_table(max)
  pad = 1 + (max*max).to_s.length
  puts (1..max).to_a.product((1..max).to_a).map{|a, b| a * b}.each_slice(max).map{ |x| x.map(&:to_s).map{ |x| " " * (pad - x.length) + x}.join('')}.join("\n")
end

print_multiplication_table(12)