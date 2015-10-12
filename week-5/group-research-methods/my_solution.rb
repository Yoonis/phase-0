# Research Methods

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]

my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}


# Person 1's solution: Ronny
def my_array_finding_method(source, thing_to_find)
  # Array to hold search resutls
  search_results = []
  # iterate over source
  source.each do |string|
    # if it's a number convert to a string
    if string.is_a?(Integer) == true
      string.to_s

      # if string is what we're looking for
    elsif string.include?(thing_to_find) == true
      # put it in our array
      search_results << string

    end


  end
  # return the array
  return search_results
end

my_array_finding_method(i_want_pets, "t")


def my_hash_finding_method(source, thing_to_find)
  
  search_results = []
  
  source.each do |key, value|
  
    if value == thing_to_find
      search_results << key
    end
    
  end
  
  return search_results

end

# Identify and describe the Ruby method(s) you implemented.

# One that I haven't used before was the is_a?(Something). It's a great way to check to see what type of Object something is
# and get a boolean value. 
#
# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
#
# to_a? is a nice way to see what type of Object it is. It's a good tool when iterating over a mixed array but only want
# a String or an Integer for example. .to_a? has a question mark, meaning it only returns true or false, which which
# is great for an if/else statement


# Person 2: Kyle

def my_array_modification_method!(source, thing_to_modify)

    source.map! do |x|

        if x.class == Fixnum

          x + thing_to_modify
        else
          x
        end

    end

end


def my_hash_modification_method!(source, years)

  source.each {|key, value| source[key] = value + years}

end


# # Identify and describe the Ruby method(s) you implemented.

#  I used map! for the first method which permanently alters the contents
# of a hash or array according to the code block you enter.  Without the bang
# at the end of the map it will create a new array instead of altering the
# original; the bang makes it destructive.  An interesting note on map-I
# thought that if I simply make the conditional "if x.class = Fixnum" without
# an appending else statement, it would only change the numbers and leave the
# strings alone.  Instead it returns nil for the strings.  Map wants to alter
# the array so badly that if it encounters an element that it hasn't been
# instructed to alter, it returns nil instead of the original element.


# For the second method I just used each.  It took a while to sort out the
# differences between how each operates on hashes as opposed to arrays and I
# tried it a bunch of different methods that I expected to work, and when I
# got it the way you see here, I didn't expect it to work because I was
# under the impression that each simply iterates over something without
# altering it permanently.  But you can make the changes permanent with the
# syntax I used in the method.


# The interesting note on each in this case is that in the code block where
# source[key] references the value, I thought that source[key] would be
# synonymous with value since when you call hash[key] it returns or is
# equal to the value.  Not in this case apparently.  If you simply say
# value = value + years it won't work.  This is evident in another method I
# was trying forever which is each_value, which specifically iterates over
# the values of a hash and runs a block.  However I couldn't get the
# block to change the values, only puts the values or something less
# useful to the exercise like push values to an array.  It has to do with
# not being able to reference the key and alter the hash that way.  In order
# to make each affect a value permanently you need to reference the key it's
# attached to (as in source[key]) because each key is a unique identifier
# that when its output value is altered, it's altered permanently.

#  I wish I could offer some personal insight in to how to read the Ruby
# Docs, but to be honest I find that they aren't the most useful reference
# of the methods.  They have bad or limited examples, explanations,
# definitions, demonstrations and readability.  I have found it much more
# useful to just peruse it for method names and google somebody else's
# explanation of the method.


# Person 3: Michael

# INPUT: Takes in an Array
# OUTPUT: alphabetiezed array

def my_array_sorting_method(source)
  source.sort_by {|a| a.to_s}
end

def my_hash_sorting_method(source)
   source.sort_by {|names, values| values}
end


# Release 1: Identify and describe the Ruby method you implemented. #We decided to use the sort_by method to solve the code.

#We decided to use the sort_by method to solve the code.
 # sort_by is a non-destructive method that does not change the -existing data. Also we could use sort_by because it sorts objects that have different class with in arrays or hashes, such as strings and ints.

 #I researched by using "Rubyist" then I would back my findings with info from ruby docs


# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?

#I learned that sometimes the solutions really is that easy. I spent an hour just researching my method because I did not think I could solve it that quick and eazy.

#Telling people about it is always easier said then done, but if you keep it breif and simple it will go futher.


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


# Person 5: N/A
#def my_array_splitting_method(source)
  # This line is here to make sure all tests initially fail. Delete it when you begin coding.
#end

# def my_hash_splitting_method(source, age)
  # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

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