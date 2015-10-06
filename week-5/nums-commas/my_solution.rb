# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode
=begin
Input: (num), where num = positive integer
Output: variable, where variable = a comma-separated integer as a string

define method separate_comma
  if integer num is less than 1,000
    return num as a string
  end if

  create array "ary" of all reversed digits in num with .to_s, .chars, and .reverse

  initialize variable "counter" to = 0

  initialize variable "x" in for loop
  for x in all indexed ary objects [0..-1] do
    if counter > 0 AND counter modulo 3 == 0
      Append comma to end of x.to_s
    end if
    counter increment by 1
  end for

  return reversed, joined ary
end method

=end

# 1. Initial Solution

def separate_comma(num)
  if num < 1000
    return num.to_s
  end

  # Need an array of the numbers and reverse it
  ary = num.to_s.chars.reverse
    
  # For every third indexed item, insert a comma into the array
  counter = 0
  for x in ary[0..-1] do
    if counter > 0 && counter%3 == 0
      x.to_s<<','
    end 
    counter += 1
  end
  
  # Reverse array, join items, and return as a string
  return ary.reverse.join
end

# 2. Refactored Solution

def separate_comma(num)
  ary = num.to_s.chars.reverse 
  ary[3..-1].each_with_index do |x, index|
    if index % 3 == 0
        x << ','
    end
  end
  return ary.reverse.join
end

# 3. Re-refactored Solution

def separate_comma(num)
  return num.to_s.reverse.chars.each_slice(3).map {|x| x.join}.join(',').reverse
end

# 4. Reflection
=begin

1. What was your process for breaking the problem down? What different approaches did you consider?
Following the DBC refactoring and researching videos posted at the beginning of Week 5, I attempted to pseudocode the problem in bits and pieces, followed by researching my questions about the pieces in order to translate to syntax.

2. Was your pseudocode effective in helping you build a successful initial solution?
No, but the comments I left in my initial solution served me better than the pseudocode did. My understanding of pseudo is that it has to outline every step of the solution, but I think I work better just being able to outline the logic in pieces and then trying to craft something to meet those pieces. Maybe my understanding of pseudo is wrong?

3. What Ruby method(s) did you use when refactoring your solution? What difficulties did you have implementing it/them? Did it/they significantly change the way your code works? If so, how?
It's humbling when a Ruby problem relentlessly beats you down for hours. Before I even reached a semblance of an initial solution, I attempted to brute force my way through the problem with .join and .concat methods on an array of split num digits, where I inserted commas by manually editing array indexing... but let's not go there. 

For my first official refactored solution (#2), I learned to use the super handy .each_with_index method. This didn't cause my solution to deviate much from the initial solution, but it allowed me to loop without a counter.

For my second official refactored solution (#3), I wanted to facepalm when I learned about the even handier .each_slice method. Combined with the .map method, this allowed the entire solution to become a beautiful, single line of chained methods. 

4. How did you initially iterate through the data structure?
My initial solution makes use of a counter and a for loop to iterate through an array that contains the split num digits in reverse. Basically if the input was the integer 1234, my array would contain ["4", "3", "2", "1"]. Each time I looped through the array objects, my counter would increment by 1 until I reached a counter with a modulo 3 that equaled 0. Then I would concat a comma to the end of the digit at that counter.

5. Do you feel your refactored solution is more readable than your initial solution? Why?
Yes and no. My initial displays all the steps on separate lines, while my final refactored compresses all steps to a single line. If I were reading these solutions for the first time, I'd have a much easier time following the initial. The final refactored requires you to mentally transform data from the beginning of the chain to end, and that's a skill which takes time to develop.

=end