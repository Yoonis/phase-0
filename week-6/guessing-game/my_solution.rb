=begin
Build a simple guessing game

# Pseudocode

Input: An integer "answer" when starting a new game, and an integer "guess" for the guess method.

Output: For the guess method, if guess is higher than answer, return :high. If guess is lower, return :low. And if guess is equal, return :correct. For the solved? method, return true if guess is the same as answer, otherwise return false.

Steps: 


=end

# Initial Solution
class GuessingGame
  def initialize(answer)
    @answer = answer
  end

  def guess(guess)
    @guess = guess
    return :high if guess > @answer
    return :low if guess < @answer
    return :correct if guess == @answer
  end

  def solved?
    @guess == @answer
  end
end

game = GuessingGame.new (rand(10))
p game.guess(5)
p game.solved?

# Refactored Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
  end

  def guess(guess)
    @guess = guess
    guess > @answer ? :high : (guess == @answer ? :correct : (:low))
  end

  def solved?
    @guess == @answer
  end
end

=begin
# Reflection
1. How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?
Instance variables encompass the characteristics of a real-world object, while instance methods represent the ways in which we can interact with that object. 

2. When should you use instance variables? What do they do for you?
Instance variables make the variable accessible outside of the method it was created in, so we should use them whenever we want to pass information between methods.

3. Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?
Flow control can be implemented with branching, loops, and conditional operators. I did not have any trouble using ternary in this challenge.

4. Why do you think this code requires you to return symbols? What are the benefits of using symbols?
I know one of the main benefits of using symbols is that it cuts a step and allows Ruby to directly return the symbol rather than using a variable to reference the symbol internally. Symbols are also immutable and unique, whereas the other option, strings, are not. Each time a string is returned, it comes with a new object ID. I'm guessing we are using symbols in this challenge for these 3 reasons combined.
=end
