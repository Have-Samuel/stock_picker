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
end

testing = ([10,23,30,14,15])