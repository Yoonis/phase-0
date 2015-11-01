# Drawer Debugger

# Original Code

class Drawer
attr_reader :contents

# Are there any more methods needed in this class?

  def initialize
    @contents = []
    @open = true
  end

  def open
    @open = true
  end

  def close
    @open = false
  end

  def add_item(item)
    @contents << item
  end

  def remove_item(item = @contents.pop) #what is `#pop` doing?
    @contents.delete(item)
  end

  def dump  # what should this method return?
    @contents = []
    puts "Your drawer is empty."
  end

  def view_contents
    puts "The drawer contains:"
    @contents.each {|silverware| puts "- " + silverware.type }
  end

end

class Silverware
attr_reader :type

# Are there any more methods needed in this class?

  def initialize(type, clean = true)
    @type = type
    @clean = clean
  end

  def eat
    puts "eating with the #{type}"
    @clean = false
  end

  def clean
    @clean = false
  end

  def clean_silverware
    @clean = true
  end

end



# Refactored Code

class Drawer
attr_reader :contents

  def initialize
    @contents = []
    @open = true
  end

  def open
    @open = true
  end

  def close
    @open = false
  end

  def add_item(item)
    @contents << item
  end

  def remove_item(item)
    @contents.delete(item)
    puts item.type + " has been removed."
  end

  def dump
    @contents = []
    puts "Your drawer is empty."
  end

  def view_contents
    puts "The drawer contains:"
    @contents.each {|silverware| puts "- " + silverware.type }
    if @contents.empty? 
      puts "- Actually, your drawer is empty right now."
    end
  end

end

class Silverware
attr_reader :type

  def initialize(type)
    @type = type
    @clean = true
  end

  def eat
    @clean = false
    puts "Eating with the #{type}."
  end

  def clean?
    if @clean == true
      puts "#{type} is clean!"
    else
      puts "Please wash #{type}."
    end
  end

  def clean_silverware
    puts "Lathering up..."
    @clean = true
  end

end

=begin
# DO NOT MODIFY THE DRIVER CODE UNLESS DIRECTED TO DO SO
knife1 = Silverware.new("knife")

silverware_drawer = Drawer.new
silverware_drawer.add_item(knife1)
silverware_drawer.add_item(Silverware.new("spoon"))
silverware_drawer.add_item(Silverware.new("fork"))
silverware_drawer.view_contents

silverware_drawer.remove_item
silverware_drawer.view_contents
sharp_knife = Silverware.new("sharp_knife")


silverware_drawer.add_item(sharp_knife)

silverware_drawer.view_contents

removed_knife = silverware_drawer.remove_item(sharp_knife)
removed_knife.eat
removed_knife.clean_silverware
raise Exception.new("Your silverware is not actually clean!") unless removed_knife.clean_silverware == true

silverware_drawer.view_contents
silverware_drawer.dump
raise Exception.new("Your drawer is not actually empty") unless silverware_drawer.contents.empty?

# What will you need here in order to remove a spoon? You may modify the driver code for this error.
spoon = Silverware.new("spoon")
silverware_drawer.add_item(spoon)
silverware_drawer.view_contents
raise Exception.new("You don't have a spoon to remove") unless silverware_drawer.contents.include?(spoon)
silverware_drawer.remove_item(spoon) #What is happening when you run this the first time?
spoon.eat
puts spoon.clean #=> this should be false
=end


# DRIVER TESTS GO BELOW THIS LINE

silverware_drawer = Drawer.new
silverware_drawer.view_contents

spoon1 = Silverware.new("spoon1")
silverware_drawer.add_item(spoon1)

silverware_drawer.add_item(Silverware.new("spoon2"))

shiny_fork = Silverware.new("shiny_fork")
silverware_drawer.add_item(shiny_fork)

silverware_drawer.view_contents

shiny_fork.clean?
shiny_fork.eat
shiny_fork.clean?
shiny_fork.clean_silverware
shiny_fork.clean?

silverware_drawer.remove_item(spoon1)
silverware_drawer.view_contents

=begin
Reflection:

1. What concepts did you review or learn in this challenge?
I reviewed classes, instance variables, and attribute readers.

2. What is still confusing to you about Ruby?
I think it's not always easy to spot Ruby code that can be made more DRY.

3. What are you going to study to get more prepared for Phase 1?
After starting JavaScript, I need to brush up on Ruby again to make sure I don't get the syntax confused. For this challenge, I accidentally got my = vs == vs === signs mixed up.

=end
