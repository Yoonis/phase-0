# Pad an Array

# I worked on this challenge [with: Michael Jasinski]

# 0. Pseudocode

=begin

Input: An array, a minimum size (non-negative integer) for the array, and an optional argument of what the array should be "padded" with.

Output: If the array's length is less than the minimum size, pad should return a new array padded with the pad value up to the minimum size. If the minimum size is less than or equal to the length of the array, it should just return the array.

define method "pad!"
  if array length is less than min_size value, then return the array

  initialize "diff" variable to represent difference between min_size and array length

  For diff times, push the pad value to the array
  
  return array
end method

define method "pad"
  initialize "diff" variable to represent difference between min_size and array length
  
  create new array "array_2"
  
  each loop through array and push all array elements into array_2

  for diff times, push pad value to array_2

  return array_2
  return array if min_size is less than array length
end method

=end

# 1. Initial Solution
def pad!(array, min_size, value = nil)
  return array if array.length >= min_size
  diff = min_size - array.length
  diff.times {array.push value}
  return array
end

def pad(array, min_size, value = nil)
  diff = min_size - array.length
  array_2 = Array.new
  array[0..-1].each {|x| array_2.push x}
  diff.times {array_2.push value}
  return array_2
  return array if array.length >= min_size 
end

# 3. Refactored Solution
def pad!(array, min_size, value = nil)
  (min_size - array.length).times {array.push value}
  return array if array.length >= min_size else array_2
end

def pad(array, min_size, value = nil)
  array_2 = array.dup
  (min_size - array.length).times {array_2.push value}
  array if array.length >= min_size else array_2
end

# 4. Reflection

=begin  
1. Were you successful in breaking the problem down into small steps?
More or less, although I still find it easier to code and then write pseudo.

2. Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?
Yes, but once I test my output I usually change the way I want to handle the problem, so my pseudo only works when it's very broad.

3. Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?
My solutions padded the input as needed, and it passed all rspecs except for pad needing to be non-destructive. I spent many hours looking over my syntax, reading up on object IDs, differences between methods I used, such as .clone and .dup, .insert and .push, etc. In the end, it turns out my pad method WAS non-destructive, but the rspec kept failing due to the order I was returning "array" vs "array_2"...

4. When you refactored, did you find any existing methods in Ruby to clean up your code?
I learned about the .dup method, which eliminated the need for me to push array elements into a new array.

5. How readable is your solution? Did you and your pair choose descriptive variable names?
We chose clear variable names for better readability.

6. What is the difference between destructive and non-destructive methods in your own words?
A destructive method will overwrite the original object with the changes induced by the method. The object ID of the final object will remain unchanged.
A non-destructive method will create a separate object to store the revised version of the original object. Each object will have their own object IDs.

=end