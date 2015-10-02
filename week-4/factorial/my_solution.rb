# Factorial

# I worked on this challenge [with: Joshua Abrams].

# Your Solution Below

def factorial(num)
	brain = 1
	for melting in 2..num do
		brain = brain*melting
	end
	return brain
end

puts factorial(5)