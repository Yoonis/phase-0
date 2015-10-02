# Factorial

# I worked on this challenge [with: Joshua Abrams].

=begin Pseudocode

Input: (num), where num is a positive integer
Output: "brain", the variable result of a for loop

define method factorial
initialize variable "brain" to = 1
initialize variable "melting" in the for loop
	for all numbers "melting" in range 2 through num inclusive, do
		brain = brain*melting
	endfor
return brain
end method

=end

# Your Solution Below

def factorial(num)
	brain = 1
	for melting in 2..num do
		brain = brain*melting
	end
	return brain
end