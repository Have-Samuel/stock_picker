def testing(hash)
  # Create an Empty Hash to store the index and the value of the array
  hashes_nums = {}
  # Iterate through the array and store the index and the value in the hash, hashes_nums = {index => value}, ie. {0 => 10, 1 => 23, 2 => 30, 3 => 14, 4 => 15}
  hash.each_index { |i| hashes_nums[i] = hash[i] }
  # Print the hash
  # The use of "\n" is to create a new line after the print statement
  print "Numbers are: #{hashes_nums}""\n"
end

testing = ([10,23,30,14,15])