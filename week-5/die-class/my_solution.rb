# Die Class 1: Numeric

# I worked on this challenge [by myself]

# 0. Pseudocode
=begin

Input: Variable "sides", where sides is a positive integer

Output: Number of die sides, and a random number of a die roll. 
If the number of die sides is less than 1, raise an argument error.

Steps:
Create Die class

define initialize method with input "sides"
  create instance variable for number of sides
  if number of sides < 1 
    raise argument error
  end if
end method

define sides to equal instance variable for sides
end method

define roll to equal a random number between 1 and the number of sides
end method

end Class method

=end

# 1. Initial Solution

class Die
  def initialize(sides)
    @die_sides = sides
    if @die_sides < 1
      raise ArgumentError.new("Number of sides should be greater than 0.") 
    end
  end

  def sides
    @die_sides
  end

  def roll
    rand(1..@die_sides)
  end
end

# 3. Refactored Solution

class Die

  def initialize(sides)
    @sides = sides
    return raise ArgumentError.new("Number of sides should be greater than 0.") if @sides < 1
  end

  def sides
    @sides
  end

  def roll
    rand(1..@sides)
  end
end

# 4. Reflection
=begin
1. What is an ArgumentError and why would you use one?
When you're certain that there are values a user shouldn't be passing as arguments to your class method, you can raise an ArgumentError based on your own conditions. This will print an error message to the user if they try to pass the unwanted argument.

2. What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
I successfully implemented rand and the raise ArgumentError.new methods.

3. What is a Ruby class?
A Ruby class is named with a constant, which is a capitalized identifier. A class is defined by a set of attributes, which are made up of methods and variables. Proper scoping of these methods and variables (sometimes using symbols @, @@, or $) is very important because that will determine how accessible each attribute is.

4. Why would you use a Ruby class?
A Ruby class allows you to organize functions and variables of a category under one class. You can then add, remove, and modify class attributes as needed, allowing for a higher degree of object manipulation.

5. What is the difference between a local variable and an instance variable?
A local variable is only accessible within the method it was created in. An instance variable does everything a local variable can, but it's accessible within a wider scope. Instance variables are denoted by an @ symbol before the name.

6. Where can an instance variable be used?
They can be used in any method of the same class.

=end