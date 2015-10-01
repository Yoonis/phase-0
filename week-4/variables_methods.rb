#Full name greeting:

puts "What is your first name?"
first = gets.chomp

puts "What is your middle name?"
middle = gets.chomp

puts "What is your last name?"
last = gets.chomp

puts 'Hello ' + first + ' ' + middle + ' ' + last + ', how are you?'


#Bigger, better favorite number:

puts "What is your favorite number?"
num = gets.to_i
num = num + 1
puts "I think " + num.to_s + " is a better number."


=begin
	
Release 6: Reflection

1. How do you define a local variable?
A local variable is an object that stores information. The same variable name can be reused, but the most recent stored information will overwrite any previous stored information.

How do you define a method?
A method is an object that can be called on another object in order to execute an operation. The method encapsulates code for the operation.

What is the difference between a local variable and a method?
Both variables and methods are essentially storage objects, but variables won't execute any operations.

How do you run a ruby program from the command line?
You can enter IRB by typing irb, and then typing out the program and calling your method. When you are done you can type exit to return to your usual shell. You can also simply run "ruby filename.rb" from your terminal.

How do you run an RSpec file from the command line?
You type "rspec rspec_file_name.spec" to run it.

What was confusing about this material? What made sense?
Some of the ways that Ruby processes information goes against what has been ingrained into us as common knowledge. For example, the || operand doesn't just mean one or the other, it means one or the other or both. Then there are special things to keep in mind, such as rand(1) always returning 0, and puts always returning as a string. Other than keep tracking of these little Ruby quirks, the material made sense.


4.3.1 Exercise: https://github.com/Yoonis/phase-0/blob/master/week-4/address/my_solution.rb

4.3.2 Exercise: https://github.com/Yoonis/phase-0/blob/master/week-4/math/my_solution.rb

=end