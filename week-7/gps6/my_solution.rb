# Virus Predictor

# I worked on this challenge [by myself, with: Max Iniguez].
# We spent [2] hours on this challenge.

# EXPLANATION OF require_relative
# Require_relative essentially runs the rspecs based on a file relative from the directory it's in.

require_relative 'state_data'

class VirusPredictor

  # Creating instance variables equal to the 3 input arguments: state_of_origin, population_density, population.
  
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  # Calling on predicted_deaths method and speed_of_spread method while taking the 3 main arguments as input.
  
  def virus_effects
    print "#{@state} will lose #{predicted_deaths} people in this outbreak and will spread across the state in #{speed_of_spread} months.\n\n"
  end

  # private makes code more maintainable because users have access to the public API only, so they don't need to see or tinker with the private methods that the public API is calling.

  private

  # This method calculates predicted deaths based on density and population count, then rounds the output down to the nearest whole integer using .floor, then returns a print with the state and calculation.
    
  def predicted_deaths # predicted deaths is solely based on population density
    case true
    when @population_density >= 200 then (@population * 0.4).floor
    when @population_density >= 150 then (@population * 0.3).floor
    when @population_density >= 100 then (@population * 0.2).floor
    when @population_density >= 50 then (@population * 0.1).floor
    else (@population * 0.05).floor
    end
  end

  # Speed variable is treated as a counter that is incremented based on the population density. The higher the density, the lower the number of months needed to spread. Output is a string that returns the total speed in months.
  
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0
    case true
    when @population_density >= 200 then speed += 0.5
    when @population_density >= 150 then speed += 1
    when @population_density >= 100 then speed += 1.5
    when @population_density >= 50 then speed += 2
    else
      speed += 2.5
    end
  end
end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

STATE_DATA.each do |state, pop_data|
  all_states = VirusPredictor.new(state, pop_data[:population_density], pop_data[:population])
  all_states.virus_effects
end

# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

#=======================================================================
=begin
# Reflection Section

1. What are the differences between the two different hash syntaxes shown in the state_data file?
This hash rocket => syntax creates a hash key value pair, but the key is not forced into a symbol form. This is good when your key is a string of a pronoun, like the state names we are seeing here. 
The key: syntax creates a key value pair as well, but the key has been symbolized and while remain immutable forever.

2. What does require_relative do? How is it different from require?
Require can make it so that the program will only run if there is a specific code package available, such as a Ruby gem. Require relative will make it so that the program is dependent on another file in a relative path in order to run.

3. What are some ways to iterate through a hash?
.map if we want to iterate and modify the collection, or .each to simply iterate.

4. When refactoring virus_effects, what stood out to you about the variables, if anything?
They weren't needed. We got rid of the print statements at the end of the last 2 methods, and instead called those methods in the virus_effects method's own print statement.

5. What concept did you most solidify in this challenge?
I learned an important lesson that cost my pair and I a lot of time... case statements have a hidden === operator that evaluates the case expression to the when statement.
This challenge also reinforced when to modify test code outside of the class versus creating a new method inside the class, all with the added twist of iterating over a nested hash from a relative file before being able to call an existing class method.

=end