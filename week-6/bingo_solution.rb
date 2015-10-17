=begin
# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# Release 0: Pseudocode
Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)

Create class BingoBoard
  INIT self with board as argument

  define method generate
    Create hash containing key strings B, I, N, G, O and corresponding letter index numbers as values.
    
    Create instance variable letter and set it equal to a randomly selected hash key.
    
    Create instance variable num and set it equal to a random number between 1 - 100,and convert it to string format.
    
    Concat @num to @letter and print
  END method

# Check the called column for the number called.

  define method check
    LOOP through each subarray in the board array
      IF the integer at the current subarray and current hash value equals the current number in integer format
        
#If the number is in the column, replace with an 'x'.

        Set this integer to "X"
        
        EACH loop through the hash keys and print them (add sleep effect for some excitement...)

# Display the board to the console (prettily)

        puts empty line for formatting purposes

        FOR each subarray in the board array
          print as a string with a hard return
        END for loop
      
      END if statement
    END loop
  END method
END class

=end

# Initial Solution

class BingoBoard
  def initialize(board)
    @bingo_board = board
  end

  def generate
    @hash = {"B" => 0, "I" => 1, "N" => 2, "G" => 3, "O" => 4}
    @letter = @hash.keys.sample
    @num = rand(1..100).to_s
    p @letter + @num
  end

  def check
    for i in 0..4 do
      if @bingo_board[i][@hash.values_at(@letter).fetch(0)] == @num.to_i
                
        @bingo_board[i][@hash.values_at(@letter).fetch(0)] = "X"
        
        @hash.each_key do |key|
          print "#{key} " 
          sleep 0.2
        end
        puts
        for i in 0..4 do
          print "#{@bingo_board[i]}\n"
        end
      end
    end
  end
end

# Refactored Solution

class BingoBoard
  def initialize(board)
    @bingo_board = board
  end

  def generate
    hash = {"B" => 0, "I" => 1, "N" => 2, "G" => 3, "O" => 4}
    letter = hash.keys.sample
    @num = rand(1..100).to_s
    @i = hash.values_at(letter).fetch(0)
    p letter + @num
  end

  def check
    for i in 0..4 do
      if @bingo_board[i][@i] == @num.to_i
        @bingo_board[i][@i] = "X"
        print "B I N G O!\n"
        for i in 0..4 do
          print "#{@bingo_board[i]}\n"
        end
      end
    end
  end
end

#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)
new_game.generate
new_game.check

=begin 
#Reflection
1. How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
It was pretty difficult mostly because I was unsure about the logic itself for some time. My pseudocoding style takes into account big picture chunks of logic, but it helps me think through the rest of the problem more than it used to. I also go back to my pseudocode and fill in a good amount of detail after I am done with my code, otherwise it might be hard for a outside party to follow.

2. What are the benefits of using a class for this challenge?
It gives us the ability to pass instance variables between methods.

3. How can you access coordinates in a nested array?
You can use .fetch() or .at() or simply double up on array[][] calls.

4. What methods did you use to access and modify the array?
I used hash values to keep track of subarray indexing, and I used loops to iterate through the main board array indices.

5. How did you determine what should be an instance variable versus a local variable?
Any information that needed to be passed over from my generate method to my check method was converted to an instance variable.

6. What do you feel is most improved in your refactored solution?
Readability and faster runtime.

=end
