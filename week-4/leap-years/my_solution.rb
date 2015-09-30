# Leap Years

# I worked on this challenge [with: Chris Pine].


# Your Solution Below

def leap_year?(yr)
	yr % 4 == 0 && (yr % 100 != 0 || yr % 400 == 0)
end