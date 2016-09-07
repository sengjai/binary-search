require "byebug"

# Place your solutions here
def binary_search(number,array)

	
	# array.each_with_index do |item,index|
	# 	if item == number
	# 		return index
	# 	elsif index == array.length - 1
	# 		return -1			
	# 	end
	# end

	sorted_array = []
	sorted_array = array.sort!
	size = sorted_array.length
	high = size - 1; 
	low = 0
	half_array = array.length/2

	while high > low do
		if sorted_array[low] == number
			return low;
		elsif sorted_array[high] == number
			return high;
		elsif low == half_array - 1 || high == half_array - 1
			return -1;
		else
			low = low + 1
			high = high - 1
		end
	end
end



test_array = (100..200).to_a
p binary_search(135, test_array) == 35

test_array2 = [13, 19, 24, 28, 32, 27, 43]
p binary_search(35, test_array2) == -1