# Add it up!

# I worked on this challenge [by myself].

# "total": total takes an Array of numbers and calculates the sum of all the numbers.

# Example: total([4.5, 0, -1]) => 3.5

=begin Pseudocode
Input: (ary), where array can contain integers and floats of positive and negative value.
Output: variable "sum", which holds the final sum after an each loop

define method total
initialize the variable sum to = 0
initialize the variable x in the for loop
for each number x in the array, do
	sum = x + sum
endfor
return final sum variable
end method

=end

# 1. total initial solution
def total(ary)
sum = 0
ary[0..-1].each do |x|
	sum = (x + sum)
end
return sum
end

# 3. total refactored solution
# Could not refactor further.

# 4. sentence_maker: sentence_maker takes an Array of strings and returns each element joined into a sentence.

# Example: sentence_maker(["i", "want", "to", "go", "to", "the", "movies"]) => "I want to go to the movies."

=begin Pseudocode
Input: (ary), where ary is an array of strings
Output: The variable sentence, where sentence contains all the strings from the array as one whole string, with spacing in a readable format.

define method sentence_maker
initialize variable sentence to first indexed ary object, and capitalize first letter of this string
initialize variable string in for loop
for each array string in the second index through last index, do
	sentence = concatenation of sentence, space, and string, where string is converted to a string
endfor
return final sentence variable with a period
end method

=end

# 5. sentence_maker initial solution

def sentence_maker(ary)
sentence = ary[0].capitalize
ary[1..-1].each do |string|
  sentence = sentence << ' ' << string.to_s
end
return "#{sentence}." 
end

# 6. sentence_maker refactored solution
# Could not refactor further.