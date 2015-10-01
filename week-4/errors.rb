# Analyze the Errors

# I worked on this challenge [by myself].
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

#"Screw you guys " + "I'm going home." = cartmans_phrase

# This error was analyzed in the README file.

# --- error -------------------------------------------------------
=begin
def cartman_hates(thing)
  while true
    puts "What's there to hate about #{thing}?"
end
=end
# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# => errors.rb
# 2. What is the line number where the error occurs?
# => Error message says 171, but really it's 17.
# 3. What is the type of error message?
# => syntax error
# 4. What additional information does the interpreter provide about this type of error?
# => unexpected end of input, expecting keyword end
# 5. Where is the error in the code?
# => The code is missing an end.
# 6. Why did the interpreter give you this error?
# => This method needs an end for the while loop and an end for the method itself.

# --- error -------------------------------------------------------

#south_park

# 1. What is the line number where the error occurs?
# => Line 36
# 2. What is the type of error message?
# => Name error
# 3. What additional information does the interpreter provide about this type of error?
# => undefined local variable or method for main object
# 4. Where is the error in the code?
# => This object name is standalone, with no assigned value.
# 5. Why did the interpreter give you this error?
# => Ruby cannot tell what this object name is. It could be a keyword, a variable name, or a method name.

# --- error -------------------------------------------------------

#cartman()

# 1. What is the line number where the error occurs?
# => Line 51
# 2. What is the type of error message?
# => No method error
# 3. What additional information does the interpreter provide about this type of error?
# => undefined method for main object
# 4. Where is the error in the code?
# => The code only contains a method name, with no actual code that the method can execute.
# 5. Why did the interpreter give you this error?
# => A method needs a body of code to define it, followed by an end.

# --- error -------------------------------------------------------
=begin
def cartmans_phrase
  puts "I'm not fat; I'm big-boned!"
end

cartmans_phrase('I hate Kyle')
=end
# 1. What is the line number where the error occurs?
# => Line 66
# 2. What is the type of error message?
# => Argument error
# 3. What additional information does the interpreter provide about this type of error?
# => wrong number of arguments (1 for 0)
# 4. Where is the error in the code?
# => The interpreter didn't expect to receive an argument for this method, but it did in line 70.
# 5. Why did the interpreter give you this error?
# => No argument was set after the method name.

# --- error -------------------------------------------------------
=begin
def cartman_says(offensive_message)
  puts offensive_message
end

cartman_says
=end
# 1. What is the line number where the error occurs?
# => Line 85
# 2. What is the type of error message?
# => Argument error
# 3. What additional information does the interpreter provide about this type of error?
# => This method has the wrong number of arguments (0 for 1)
# 4. Where is the error in the code?
# => The method is given 1 argument in line 85, but in line 89 there is no argument to run.
# 5. Why did the interpreter give you this error?
# => The number of arguments defined needs to equal the number of arguments given (unless you are using an argument sponge or setting default argument values).


# --- error -------------------------------------------------------
=begin
def cartmans_lie(lie, name)
  puts "#{lie}, #{name}!"
end

cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')
=end
# 1. What is the line number where the error occurs?
# => Line 105
# 2. What is the type of error message?
# => Argument error
# 3. What additional information does the interpreter provide about this type of error?
# => wrong number of arguments (1 for 2)
# 4. Where is the error in the code?
# => 1 argument was given in line 109, while 2 arguments were defined in the method.
# 5. Why did the interpreter give you this error?
# => Again, the number of arguments defined needs to equal the number of arguments given (unless you are using an argument sponge or setting default argument values).

# --- error -------------------------------------------------------

#5 * "Respect my authoritay!"

# 1. What is the line number where the error occurs?
# => Line 124
# 2. What is the type of error message?
# => Type error
# 3. What additional information does the interpreter provide about this type of error?
# => string cannot be coerced into Fixnum
# 4. Where is the error in the code?
# => An integer is calling the multiply method with a string.
# 5. Why did the interpreter give you this error?
# => Ruby cannot multiply an integer by a string. However, it can multiply a string by an integer.

# --- error -------------------------------------------------------

#amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
# => Line 139
# 2. What is the type of error message?
# => Zero division error
# 3. What additional information does the interpreter provide about this type of error?
# => The code attempted to divide by 0.
# 4. Where is the error in the code?
# => There is no valid result to dividing by 0.
# 5. Why did the interpreter give you this error?
# => Ruby has nothing valid to return as output.

# --- error -------------------------------------------------------

#require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# => Line 155
# 2. What is the type of error message?
# => Load error
# 3. What additional information does the interpreter provide about this type of error?
# => cannot load such file. The interpreter then provides us with our current directory followed by the file name.
# 4. Where is the error in the code?
# => The code is attempting to load a file that doesn't exist.
# 5. Why did the interpreter give you this error?
# => The file doesn't exist on my local drive, and to attempt to open this file with Ruby, the code would have to read: 
# => require_relative = File.open (“cartmans_essay.md")

# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.

=begin

1. Which error was the most difficult to read?
The load error, because I had never come across it before and had to research if opening a file from ruby was even possible.

2. How did you figure out what the issue with the error was?
All of the error messages were very clear on the type of errors, the location of errors, and the content Ruby was expecting to see.

3. Were you able to determine why each error message happened based on the code? 
Yes.

4. When you encounter errors in your future code, what process will you follow to help you debug?
The first thing I will do is jump to the line number where the error stems from, and troubleshoot from there by taking advantage of all the information provided in the error message.

=end