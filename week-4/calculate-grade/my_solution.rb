# Calculate a Grade

# I worked on this challenge [with: Chris Pine].

# Your Solution Below

def get_grade(num)
	if num >= 90
		return "A"
	elsif num >= 80 && num < 90
		return "B"
	elsif num >= 70 && num < 80
		return "C"
	elsif num >= 60 && num < 70
		return "D"
	else 
		return "F"
	end
end			
			