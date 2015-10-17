# Your Names
# 1) Eunice
# 2) Becca

# We spent [1.5] hours on this challenge.

# Bakery Serving Size portion calculator.
# The input is an order - item and quantity.
# The library hash includes the items we are able to make and the serving size for each item.
# This method checks whether the item to make matches a library item.
# The error counts down so we check all of the library items against the item_to_make input to ensure the input is within the bounds of the library hash keys.
# Return an argument error if there is no match.
# Serving size checks library hash values for each baked item's serving size.
# Modulo determines whether there is leftover ingredients between order quantity and serving size.
# Case for serving size modulo. When there is no remainder, return order quantity. 
# When there is a remainder, display amount of extra servings needed to meet order quantity (number of people to serve).
# Here we can include a feature for what can be done with any leftovers.

def serving_size_calc(item_to_make, order_quantity)
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}
  
  if (library.include? item_to_make) == false
    raise ArgumentError.new("Sorry, #{item_to_make} is not a valid bakery item.")
  end
 
  serving_size = library[item_to_make]
  
  serving_size_mod = order_quantity % serving_size

  if serving_size_mod == 0
    return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}"
  
  elsif serving_size_mod < 5
    extras = " #{serving_size_mod} of cookie!"

  elsif serving_size_mod == 5
    extras = " 1 of cake!"

  else serving_size_mod == 6
    extras = " 1 of cake and 1 of cookie!"
  end

  return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}. You still have #{serving_size_mod} serving size(s) to fulfill. You can make the following extra goodies:" + extras
end

# Test Code
p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
p serving_size_calc("ERROR", 5)

=begin 
# Reflection
1. What did you learn about making code readable by working on this challenge?
I learned to modify the language around variables to make the output more reader friendly. Also thanks to my pair's suggestion, for the first time I saved string output into a variable after each if branch, and then in the final method return, I included the variable so that the output is nicely customized for the if branch that validates true.

2. Did you learn any new methods? What did you learn about them?
Although we didn't use it, I learned of the .any? method that takes a block argument and checks if there's a match.

3. What did you learn about accessing data in hashes? 
This challenge was a recap of the hash method .values_at and also how to call a hash value by using hash[key].

4. What concepts were solidified when working through this challenge?
Using parenthesis in conditional statements to make sure they evaluate properly.
=end
