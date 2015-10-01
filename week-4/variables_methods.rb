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

