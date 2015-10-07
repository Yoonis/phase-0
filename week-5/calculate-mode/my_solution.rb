# Calculate the mode Pairing Challenge

# I worked on this challenge [by myself, with: Bruno Zatta]

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and include it in this file. Also make sure everything that isn't code is commented.

# 0. Pseudocode

# What is the input? Array of strings and integers
# What is the output? (i.e. What should the code return?) Array containing most frequent items. If there is only 1 most frequent, then output a single-element array.
# What are the steps needed to solve the problem?

=begin

Create a Hash "count" with default value = 0

In array "array", iterate through with an each loop, where n = array object
  For every first instance of n, n is stored as a hash key
  The corresponding n value is incremented by 1 per each n encounter
End each loop

Initialize variable "frequency" to equal greatest hash value

Create array "x"

Initialize "k" and "v" variables in each loop

For each key and value in hash "count"
  if frequency == value
  push corresponding key to array x
  end if
end for

return array x

end method

=end

# 1. Initial Solution

def mode(array)
  count = Hash.new 0
  array.each do |n|
    count[n] += 1
  end

  frequency = count.values.max
  
  x = []
  count.each do |k, v|
    if frequency == v 
      x.push k
    end
  end
  x
end

# 2. Refactored Solution

def mode(array)
  count = Hash.new 0 
  array.each {|n| count[n] += 1}
  max = count.values.max
  count.select {|k,v| v == max}.keys
end

# 3. Reflection

=begin
1. Which data structure did you and your pair decide to implement and why?
We decided to go with a hash, where keys would store the array elements, and values would store the frequencies of each element. This was our go-to data structure because we have 2 pieces of information to keep track of.

2. Were you more successful breaking this problem down into implementable pseudocode than the last with a pair? 
Our initial pseudo consisted of chunks of logic that allowed us to handle translating from words to syntax in piecemeal. Once we had working syntax, we were able to fill in pseudo details as seen here.

3. What issues/successes did you run into when translating your pseudocode to code?
We spent a good deal of time researching on ruby docs because half the battle is not knowing which methods are available, and how these methods could be combined to achieve our solution. 

4. What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?
Hash methods we used: .select, .keys, .values, .new
Enumerable method: .max
Array method: .each, .push

The hardest one for me to wrap my head around was actually my pair's creative combination of the Hash.new method and the array.each block that it takes in order to populate its keys and values.

Another good combination is calling .keys on the Hash.select block, which I didn't know was possible beforehand.
=end