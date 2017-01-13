# 1.upto(12) { |a| 1.upto(12) {|b| print "%3d%s" % [(a*b),b==1? "|" : ""]} ;
# puts "\n"+(a==1 ? '-'*37 : "")}

def print_multiplication_table(max)
  pad = 1 + (max*max).to_s.length
  puts (1..max).to_a.product((1..max).to_a).map{|a, b| a * b}.each_slice(max).map{ |x| x.map(&:to_s).map{ |x| " " * (pad - x.length) + x}.join('')}.join("\n")
end

print_multiplication_table(12)