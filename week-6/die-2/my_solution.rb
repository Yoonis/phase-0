=begin

Die Class 2: Arbitrary Symbols

Pseudocode

Input: Array of die labels in string format.

Output: Argument error if array is empty. If not, then return a random array string element.

Steps:
INIT the "labels" array
  RAISE argument error IF labels is empty
END method

DEF sides method
  create @sides instance variable to equal length of @labels
END method

DEF roll method
  call .sample method on @labels to return random array string
END method

=end

# Initial Solution

class Die
  def initialize(labels)
    @labels = labels
    return raise ArgumentError.new("Array cannot be empty") if labels.length == 0
  end

  def sides
    @sides = @labels.length
  end

  def roll
    @roll = @labels.sample
  end
end

# Refactored Solution

class Die
  attr_reader :sides
  
  def initialize(labels)
    @labels = labels
    return raise ArgumentError.new("Array cannot be empty") if labels.length == 0
    @sides = @labels.length
  end

  def roll
    @roll = @labels.sample
  end
end

=begin
# Reflection

1. What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?
The main difference is that die sides in this class could go off the @labels instance variable. I didn't have to change much logic either, only slight tweaks. 

2. What does this exercise teach you about making code that is easily changeable or modifiable? 
We can make our lives easier by creating clean, easy to understand code and using instance variables where appropriate the first time around. That way, edits will be simple to implement.

3. What new methods did you learn when working on this challenge, if any?
I learned the .sample method which allowed me to return a random array element.

4. What concepts about classes were you able to solidify in this challenge?
The instance variable concept was solidifed when I was able to use @labels in my definition of the sides method.

=end