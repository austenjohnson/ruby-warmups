puts 'Enter input to add it to an array. The numbers will be added together for a total. Type exit to exit'
@numbers = [0]
def sums
  while true
    input = gets.chomp.to_i
    break if input == 'exit'
    @numbers << input
      puts "#{@total}"
      puts "#{@numbers.cumulative_sum}"
    end
    end
  # puts "What math function would you like? Addition, subtraction, division, multiplication, etc..."
  # func = gets.chomp.downcase
  # if func = 'math'
  #   @numbers.
sums