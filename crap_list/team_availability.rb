# As the Engineering Lead

# I want to be able to view when the entire team is available for all 30 minute increments

# So that I know when the best time to schedule a team discussion is

# Given TruHearing development hours are 8:30-5:00, with lunch from 12:00-1:00, we have 6 engineers on our team with appointments at 9:00-9:30, 9:00-11:30, 10:00-11:00, 2:30-3:00, 2:30-3:30

# When I execute my script I get an array of times in 30 minute increments when my entire team is available.
# Expected Behavior for story #1

# You will create a function called team_availability that takes a single parameter of an array of arrays consisting of start and end times.
# When I execute the function below


# I am returned an array of arrays

[['8:30', '9:00'], ['11:30', '12:00'], ['1:00', '1:30'], ['1:30', '2:00'], ['2:00', '2:30'], ['3:30', '4:00']]
open_hours = [['8:30', '9:00'], ['9:00', '9:30'], ['9:30', '10:00'], ['10:00', '10:30'], ['10:30', '11:00'], ['11:00', '11:30'], ['11:30', '12:00'], ['1:00', '1:30'], ['1:30', '2:00'], ['2:00', '2:30'], ['2:30', '3:00'], ['3:00', '3:30'], ['3:30', '4:00'], ['4:00', '4:30'], ['4:30', '5:00']]
busy_times = [['9:00', '9:30'], ['9:00', '9:30'], ['9:30', '10:00'], ['10:00', '10:30'], ['10:30', '11:00'], ['11:00', '11:30'], ['10:00', '10:30'], ['10:30', '11:00'], ['2:30', '3:00'], ['2:30', '3:00'], ['3:00', '3:30']]
free_times = []

day = open_hours.each { |x, y| x + '-' + y }

busy_times.each do |x, y|
 x + '-' + y
end

big_array = open_hours.concat busy_times
free_times = big_array.flatten.uniq
p free_times

# !!! BRAYDENS INCOMPLETE CODE !!!

# def team_availability availability

#   sectioned_array = availability.transpose
#   start_times_arr = sectioned_array[0]
#   end_times_arr = sectioned_array[1]

#   start_times_arr.each do |x|
#     if x.include?(':30')
#       x.gsub! ':30', '.5'
#     else
#       x.gsub! ':00', '.0'
#     end
#   end

#   end_times_arr.each do |x|
#     if x.include?(':30')
#       x.gsub! ':30', '.5'
#     else
#       x.gsub! ':00', '.0'
#   end
# end

# start_times_arr.map!(&:to_f)
# end_times_arr.map!(&:to_f)

# p start_times_arr
# p end_times_arr

# math = end_times_arr[0] - start_times_arr[0]
# puts math
# end

# team_availability([['9:00', '9:30'], ['9:00', '11:30'], ['10:00', '11:00'], ['2:30', '3:00'], ['2:30', '3:30']])