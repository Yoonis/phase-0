# PezDispenser Class from User Stories

# I worked on this challenge [by myself].
# I spent [#] hours on this challenge.

=begin
# Review the following user stories:

A) As a Pez user, I'd like to be able to "create" a new Pez dispenser with a group of flavors that represent Pez so it's easy to start with a full Pez dispenser.

B) As a Pez user, I'd like to be able to easily count the number of Pez remaining in a dispenser so I can know how many are left.

C) As a Pez user, I'd like to be able to take a Pez from the dispenser so I can eat it.

D) As a Pez user, I'd like to be able to add a Pez to the dispenser so I can save a flavor for later.

E) As a Pez user, I'd like to be able to see all the flavors inside the dispenser so I know the order of the flavors coming up.


# Pseudocode
A) Initialize Pez dispenser that takes in a flavors array as the argument. Make flavors an attr_reader for easy passing outside of the initial method.

B) Define method that counts length of the flavors array.

C) Define method that randomly selects an element from the flavors array and deletes it.

D) Define method that takes a user's Pez input as an argument and pushes it to the flavors array.

E) Define method that puts all elements of the flavors array.

=end


# Initial Solution

class PezDispenser

  def initialize(flavors)
    @flavors = flavors
  end

  def pez_count
    @flavors.length
  end

  def see_all_pez
    @flavors
  end

  def add_pez(item)
    @flavors << item
  end

  def get_pez
    picked = @flavors.sample
    @flavors.delete(picked)
  end

end


# Refactored Solution

class PezDispenser
  attr_reader :flavors

  def initialize(flavors)
    @flavors = flavors
  end

  def pez_count
    flavors.length
  end

  def see_all_pez
    flavors
  end

  def add_pez(item)
    flavors << item
  end

  def get_pez
    flavors.delete(flavors.sample)
  end
end


# DRIVER TESTS GO BELOW THIS LINE

flavors = %w(cherry chocolate cola grape lemon orange peppermint raspberry strawberry).shuffle
super_mario = PezDispenser.new(flavors)
puts "A new pez dispenser has been created. You have #{super_mario.pez_count} pez!"
puts "Here's a look inside the dispenser:"
puts super_mario.see_all_pez
puts "Adding a banana pez."
super_mario.add_pez("banana")
puts "Now you have #{super_mario.pez_count} pez!"
puts "Oh, you want one do you?"
puts "The pez flavor you got is: #{super_mario.get_pez}"
puts "Now you have #{super_mario.pez_count} pez!"


=begin
# Reflection

What concepts did you review in this challenge?
I reviewed the attribute reader, writer, accessor concept.

What is still confusing to you about Ruby?
Nothing in particular that this challenge touches upon.

What are you going to study to get more prepared for Phase 1?
I'm going to continue practicing JavaScript and Ruby problems to prepare.

=end
