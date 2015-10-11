# Research Methods

# I spent [] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]

my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1's solution
def my_array_finding_method(source, thing_to_find)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_finding_method(source, thing_to_find)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#

# Person 2
def my_array_modification_method!(source, thing_to_modify)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_modification_method!(source, thing_to_modify)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 3
def my_array_sorting_method(source)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_sorting_method(source)
   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


#Person 4: Eunice

def my_array_deletion_method!(array, letter)
  array.delete_if {|x| x.to_s.include?(letter) }
end

p my_array_deletion_method!(i_want_pets, "a")

def my_hash_deletion_method!(hash, letter)
  hash.delete_if {|k, v| k == letter}
end

p my_hash_deletion_method!(my_family_pets_ages, "George")

=begin
1. Identify and describe the Ruby method(s) you implemented.
Array Methods: 
- .delete_if: Deletes every array element that the block evaluates true for. The array changes upon each block call, not upon completion of the iteration.
- .to_s: Returns the value in string datatype.
- .include?(object): Returns true if self includes the given object. Returns false if otherwise. 
Hash Method:
- .delete_if: Deletes every key value pair that the block evaluates true for.

2. Teach your accountability group how to use the methods.
Use .include?(object) whenever you want to return a boolean value. This is handy when you have a block that will execute based on the boolean return. 
Use of .to_s is self explanatory.
When using the .delete_if method (both the hash and array versions), keep in mind that this will permanently modify the object calling it.

3. Share any tricks you used to find and decipher the Ruby Docs.
I scroll through the left-side nav menu for method names that look like they will accomplish what I need done. Clicking on the method will jump to the page section containing the definition and use cases. If it's not what I was looking for, I simply press my Home key and continue browsing that side bar.
=end

# Person 5
def my_array_splitting_method(source)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_splitting_method(source, age)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
#
#
#


# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?