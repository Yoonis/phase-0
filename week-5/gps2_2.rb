=begin 

1. Pseudocode

Input: A hash, where the key is the grocery item and the value is the item quantity. There are a total of 5 methods, which each method calling upon the previous method in order to complete the necessary use cases.

Output: A method which prints out the hash key value pairs in a readable fashion.

Solution:
define method "new_list"
  create new hash
end method

define method "add_item"
  add key and value pairs to new_list hash
end method

define method "delete_item"
  delete "Lemonade" key and return self
end method

define method "update_item"
  replace add_item hash with new hash where "Ice Cream" value is revised
end method

define method "print_list"
  EACH key value pair in "update_item" hash, print the pairs in a string using interpolation.
end method

=end

# 2. Solution

def new_list
  Hash.new
end

def add_item
  new_list = {
    "Lemonade" => 2, "Tomatoes" => 3, "Onions" => 1, "Ice Cream" => 4
    }
end

def delete_item
  add_item.tap {|x| x.delete("Lemonade")}
end

def update_item
  delete_item.replace({"Tomatoes" => 3, "Onions" => 1, "Ice Cream" => 1})
end

def print_list
  update_item.each do |item, quantity|
    puts "You need to buy #{quantity} #{item}."
  end
end

print_list

# 3. Refactor

def new_list
  Hash.new
end

def add_item
  new_list = {"Lemonade" => 2, "Tomatoes" => 3, "Onions" => 1, "Ice Cream" => 4}
end

def delete_item
  add_item.tap {|x| x.delete("Lemonade")}
end

def update_item
  delete_item.replace({"Tomatoes" => 3, "Onions" => 1, "Ice Cream" => 1})
end

def print_list
  update_item.each {|item, quantity| puts "You need to buy #{quantity} #{item}."}
end

print_list

=begin

4. Reflection

1. What did you learn about pseudocode from working on this challenge?
When there are many methods involved, pseudocoding helps keep track of each method's input and output. I also learned that certain Ruby keywords need to be caps locked in pseudo.

2. What are the tradeoffs of using Arrays and Hashes for this challenge?
We didn't have much difficulty implementing a solution using hashes. It was very apparent to us to use hashes since we are dealing with 2 pieces of information per list item. If we were to use arrays it'd be less convenient to store and modify the corresponding values.

3. What does a method return?
A method returns either the last statement in the definition, or the first value that is explicitly returned if the return condition is met.

4. What kind of things can you pass into methods as arguments?
Method parameters can take a whole host of arguments, such as arrays, other methods, integers, strings, or hashes. It's important to note that arguments fall into 3 categories: optional arguments, default arguments, and required arguments.

5. How can you pass information between methods?
You can call a method within another method, allowing you to make use of the final return value of one method within another.

6. What concepts were solidified in this challenge, and what concepts are still confusing?
The new concept for me is using a method I defined as an object inside another method. I wouldn't say it has been solidified through this challenge because I don't know the full extent to the different ways this concept can be practiced.

=end