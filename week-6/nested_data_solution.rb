# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# ============================================================

p array[1][1][2][0]

# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================

p hash[:outer][:inner]["almost"][3]

# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================

p nested_data[:array][1][:hash]

# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]

number_array.each do |element|
  if element.kind_of?(Array)
    element.each { |inner| p inner+5 }
  elsif element.kind_of?(Integer)
   p element + 5
  end
end

# REFACTOR RELEASE 3:

number_array.map do |x|
  x.kind_of?(Array) ? x.each { |inner| p inner+5 } : (p x+5)
end

# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

startup_names.each do |name|
  if name.kind_of?(Array)
    name.each do |inner| 
      if inner.kind_of?(Array)
        inner.each { |inner2| p inner2 + "ly" }
      elsif inner.kind_of?(String)
        p inner + "ly"
      end
    end
  elsif name.kind_of?(String)
    p name + "ly"
  end
end

=begin
# Reflection:

1. What are some general rules you can apply to nested arrays?
Keep really good tabs on your index numbers when accessing nested elements.

2. What are some ways you can iterate over nested arrays?
Use the same collection methods as you would on one-dimensional arrays, but nest your collection methods. Depending on what kind of datatype you want to output, you can use a method like .each or .map.

3. Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?
I re-used the ternary operator to clean up the many lines I had in the initial solution's if branches. 
=end