# # # Write a function that returns the largest element in a list (All numbers)
def high_num
	arr =	(-50..50).to_a.shuffle.take(15)
	puts arr.sort
	puts
	puts "The highest number is #{arr.sort.last}"
	puts
end

high_num

##### 										EXAMPLES FROM BRAYDEN UNDER

# arr = [4, 2, 145, 12, -146, 7]
# puts val = arr.max

#### 											SECOND EXAMPLE

# def sort_method
# 	arr = [4, 2, 145, 12, -146, 7]

## 	#puts val = arr.max

### 	#puts arr
### 	#puts arr.sort

#### 	#puts arr.sort!
#### 	#puts ""
####  #puts arr

##### => #val = arr.sort.last

###### => #val = arr.sort.slice(-1) (-1 means last number in array)
###### => #puts arr
###### => #puts ""
###### => #puts val

# end

# sort_method


