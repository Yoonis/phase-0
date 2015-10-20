# Implement a Reverse Polish Notation Calculator

# Pseudocode

# Input: A valid RPN expression in string format. Calculate for + - and * only.
# Output: The evaluated expression.
# Steps:
# EACH with index through expression
#   Find any instance of + or - or *
#   When there's a match, x[i-2] + or - or * x[i-1]


# Initial Solution

class RPNCalculator

  def evaluate(expression)
    arr = expression.split
    arr.each_with_index do |x, i|
      result = 0
      if x =~
      case true
      when x == "+" then return (arr[i-2].to_i + arr[i-1].to_i)
      when x == "-" then return (arr[i-2].to_i - arr[i-1].to_i)
      when x == "*" then return (arr[i-2].to_i * arr[i-1].to_i)
      end
    end
    if expression.split.length == 1 
      return expression.to_i
    end
  end

end

=begin
class RPNCalculator
  def operation(a, b, operator)
    return case operator
      when '+' then a + b 
      when '-' then a - b
      when '*' then a * b
      when '/' then a / b
      when '%' then a % b
    end 
  end
  
  def evaluate(some_math)
    op_stack = []  
    some_math.split.each do |x|
      if x =~ /\d+/ 
        op_stack.push(x.to_i)
      else
        b = op_stack.pop
        a = op_stack.pop
        op_stack.push(operation(a, b, x))
      end
    end
    res = op_stack.pop
    puts res
  end
end
=end

#Driver code

calc = RPNCalculator.new
calc.evaluate('1 2 +')
calc.evaluate('2 5 *')
calc.evaluate('50 20 -')
calc.evaluate('70 10 4 + 5 * -') #FAILING. NEED TO STORE COMPUTED VALUES FOR ADDITIONAL OPERANDS.

# 4. Refactored Solution






# Reflection