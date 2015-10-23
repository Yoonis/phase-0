=begin
# Class Warfare, Validate a Credit Card Number

# Pseudocode

# Input: 16 digit integer

# Output: If the check_card total is a multiple of ten, return true, else return false. 
If the input doesn't have 16 digits, raise an argument error.

# Steps:
1. Check on initialization for a card length of 16 digits.
2. Convert number into string, split at each digit, and create a new array with these string digits.
3. EACH loop with index through the array. At each index with a modulo 2 of 0, convert the digit to integer form and replace the digit with the digit doubled in value.
4. Create a sum variable and set to 0.
5. JOIN all digits in the array into one string, then split at each digit.
6. EACH loop through this split digit array, convert each digit to integer form, and increment the sum variable with each digit.
7. Return true IF the sum total modulo 10 is 0.
=end

# Initial Solution

class CreditCard
  def initialize(card)
    @card = card
    return raise ArgumentError.new("Card must have 16 digits") if (card.to_s.split('').length) != 16
  end

  def check_card
    array = @card.to_s.split('').to_a

    array.each_with_index do |num, index|
      if index % 2 == 0
        num.replace (num.to_i*2).to_s
      end
    end

    sum = 0

    array.join.split('').each do |digit|
      sum = sum + digit.to_i
    end

    if (sum%10) == 0
      return true
    else 
      return false
    end
  end  
end

# Test Code
card = 4563960122001999
test = CreditCard.new(card)
test.check_card


# Refactored Solution

class CreditCard
  def initialize(card)
    @card = card
    return raise ArgumentError.new("Card must have 16 digits") if card.to_s.length != 16
  end

  def check_card
    digits = @card.to_s.split('')
    digits.each_with_index do |digit, index| 
      (digit.replace (digit.to_i*2).to_s) if index % 2 == 0
    end
    sum = 0
    digits.join.split('').each {|digit| sum += digit.to_i}
    sum % 10 == 0
  end  
end

=begin
# Reflection

1. What was the most difficult part of this challenge for you and your pair?
The most difficult part was keeping track of all the integer and string conversions.

2. What new methods did you find to help you when you refactored?
I encountered the .replace () method that helped with my initial solution. I didn't use any new methods for the refactor.

3. What concepts or learnings were you able to solidify in this challenge?
Simple datatype conversions and iterations. I was also reminded that == will automatically return a boolean, so I don't need to encase it in an if branch.
=end
