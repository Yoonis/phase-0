#Attr Methods

class NameData
  attr_reader :name
  def initialize
    @name = "Eunice"
  end
end

class Greetings
  def initialize
    @name_data = NameData.new
  end

  def hello
    puts "How do you do " + @name_data.name + "?"
  end
end

greet = Greetings.new
greet.hello

=begin
# Reflection

Release 1:
1. What are these methods doing?
First we are initializing the Profile class with data on 3 characteristics of the class. 
Second we have a print method that prints out the instance variable values of the 3 characteristics. 
Third, for each of the 3 characteristics, we create a method that equals the instance variables. We then create 3 more methods that set each of those instance variables equal to the method argument/input. This second set of 3 methods essentially allows us to write over the data in those instance variables.

2. How are they modifying or returning the value of instance variables?
By calling on a new instance of the class, then calling the 3 methods that allow the user to write their own input for the 3 characteristics, then calling the print_info method, the user is able to modify and return the modified characteristics.

Release 2:
1. What changed between the last release and this release?
The age characteristic became an instance variable with the ability to be read outside of the class. This was made possible by adding the symbol :age to attr_reader at the top of the class.

2. What was replaced?
The method that defines @age was replaced.

3. Is this code simpler than the last?
It's getting simpler.

Release 3:
1. What changed between the last release and this release?
The :age instance variable now has both reader and writer attributes. 

2. What was replaced?
This eliminated the need for the change_my_age method because the @age instance variable can now be read and overwritten outside of the class.

3. Is this code simpler than the last?
Yes.

Release 6:
1. What is a reader method?
attr_reader allows an instance variable to be called and viewed outside of its class, but it is immutable.

2. What is a writer method?
attr_writer allows an instance variable to be called and modified outside of its class, but it cannot be viewed.

3. What do the attr methods do for you?
They state your intention for an instance variable at the very beginning of the class, which makes the code easier to follow. They allow instance variables to be handled outside the scope of the class.

4. Should you always use an accessor to cover your bases? Why or Why not?
They're not always necessary. If they are used, it's important to choose reader, writer, or accessor appropriately.

5. What is confusing to you about these methods?
Remembering when to use these methods.
=end
