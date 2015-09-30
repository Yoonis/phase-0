# I worked on this challenge [with: Chris Pine].


# Your Solution Below

def valid_triangle?(a, b, c)
  a + b > c && b + c > a && a + c > b
end