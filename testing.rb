def testing(hash)
  # Create an Empty Hash to store the index and the value of the array
  hashes_nums = {}
  # Iterate through the array and store the index and the value in the hash, hashes_nums = {index => value}, ie. {0 => 10, 1 => 23, 2 => 30, 3 => 14, 4 => 15}
  hash.each_index { |i| hashes_nums[i] = hash[i] }
  # Print the hash
  # The use of "\n" is to create a new line after the print statement
  print "Numbers are: #{hashes_nums}""\n"

  # Create an array that will store numbers_hash keys for reference on the hash index
  numbers_hash_keys = hashes_nums.keys
  # This will print the indexes that are the same keys in the hash, ie. [0, 1, 2, 3, 4]
  print "Numbers_hash_keys are: #{numbers_hash_keys}""\n"

  # Create a second hash to store keys (days) and values [] empty array
  # We can not use the numbers.each b'se deplicate numbers will be storeed in the same key not independently
  output_hash = {}
  numbers.each_index { |i| output_hash[i] = [] }
  print "Output_hash is: #{output_hash}""\n"

  # Iterate through the numbers_hash, and for each k,vpv pair, execute a while loop that iterates 
  # equal to hash length minus the position of the given key (key index pulled from numbers_hash_keys)
  # Then subtract the subsequent values in the hash from the value, v and store the result in the output_hash
  numbers_hash.each do |k, v|
    counter = 1
    # For our code, each index will be subtracted from the subsequent indexes, so we need to iterate through the hash. eg {0 => [14, 11, 8, 9, 16, 7], 1 => [-3, -6, -5, -12, -3, 2, -7], 2 => [-3, -2, -9, 0, 5, -4], 3 => [1, -6, 3, 8, -1], 4 => [-7, -2, 3, -2], 5 => [5, 0, 5], 6 => [-5, 0], 7 => [5], 8 => []}
    while counter <= numbers_hash.length - numbers_hash_keys.index(k) - 1 do
      output_hash[k] << v - numbers_hash[k + counter]
      counter += 1
  end
end
print "Output_hash is: #{output_hash}""\n"

# Then we have to iterate through the output_hash and find the lowest/minimum value for each key and push to the lowest_array 
# Values are (buy - sell) and the lowest value is the best day to buy and the next day is the best day to sell
lowest_array = []
output_hash.each do |k, v|
  lowest_array << v.min
end
print "Lowest_array is: #{lowest_array}""\n"

# Getting the minimum value from the lowest_array
# Get rid of any nil values in the array
# buy day is the hash index where the lowest number out of the lowest_array is found
# Sell day is buy day index + 1 of the lowest number in the lowest_array, + 1 b'se the next day is the best day to sell
lowest_array.compact!
# Compact! is used to remove nil values from the array
buy_day = lowest_array.index(lowest_array.min)
# The index of the lowest value in the lowest_array is the best day to buy, which is stored in the key/index of the hash 1, which is -12 in the output_hash. 1 => [-3, -6, -5, (-12,) -3, 2, -7]
sell_day = buy_day + output_hash[buy_day].index(output_hash[buy_day].min) + 1

puts "Buy on day #{buy_day}"
puts "Sell on day #{sell_day}"
end


testing = ([17, 3, 6, 9, 8, 15, 6, 1, 10])