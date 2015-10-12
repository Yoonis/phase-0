=begin Calculate a letter grade!

Create a method get_grade that accepts an Array of test scores. Each score in the array should be between 0 and100, where 100 is the max score.

Compute the average score and return the letter grade as a String, i.e., 'A', 'B', 'C', 'D', or 'F'.

0. Pseudocode

Input: Array of test scores with range of 0..100.

Output: A string letter grade that represents the score average, with grade range of A..F.

Steps:
Define get_grade method
  Count length of array

  Create score_total variable to store sum of scores

  EACH loop array elements to sum up the total

  Divide score_total by array length for the average

  Use conditionals to outline score ranges and corresponding letter grades.

  Return the average and the letter grade
end method

=end

scores = [75, 85, 85, 85, 85]

# 1. Initial Solution

=begin
def get_grade(scores)
  number_of_scores = scores.length

  score_total = 0

  scores.each do |x|
    score_total = x + score_total
  end

  average = score_total / number_of_scores

  case
    when average >= 90
      letter = 'A'
    when average >= 80
      letter = 'B'
    when average >= 70
      letter = 'C'
    when average >= 60
      letter = 'D'
    else
      letter = 'F'
  end

  # 90..100 ? letter = 'A' : 
  # (80..89 ? letter = 'B' : 
  # (70..79 ? letter = 'C' : 
  # ((60..69) ? letter = 'D' : letter = 'F')))

  return letter
end

p get_grade(scores) 
=end

# 3. Refactored Solution

def get_grade(scores)
  score_total = 0

  scores.each { |x| score_total = x + score_total }

  average = score_total / (scores.length)

  case
      when average >= 90
        letter = 'A'
      when average >= 80
        letter = 'B'
      when average >= 70
        letter = 'C'
      when average >= 60
        letter = 'D'
      else
        letter = 'F'
    end
  
  return letter
end

p get_grade(scores) 
