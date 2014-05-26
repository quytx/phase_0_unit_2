# U2.W5: Implement a Reverse Polish Notation Calculator


# I worked on this challenge by myself.

# 2. Pseudocode

# Input: A string contains numbers and operators. Assume input is in valid format (no other letters or non-number characters)
# Output: The result of the mathematical operations
# Steps:
# 1. Create an empty array to hold all numbers in reversed order
# 2. Split the input into an array of strings
# 3. Iterate through each element in the array
# a. If it is a number, insert to the array at index 0 position
# b. If it is an operator sign, do the math operation between the first two numbers in the array
# 4. Result would be the first number in the array



# 3. Initial Solution

class RPNCalculator  
  def evaluate(input)
    numbers = Array.new    
    input.split(" ").each do |x|      
      if x.to_s == "+"         
        numbers[0] = numbers.delete_at(0) + numbers[0]
      elsif x.to_s == "-"        
        numbers[0] = 0 - numbers.delete_at(0) + numbers[0]
      elsif x.to_s == "*"        
        numbers[0] = numbers.delete_at(0) * numbers[0]
      else
        numbers.insert(0,x.to_i)
      end             
    end    
    return numbers[0]    
  end   
end


# 4. Refactored Solution
# I am thinking of how to convert from a string, i.e "+" or "-" or "*" to the actual math operation to eliminate some redundant codes above. But I haven't come up with a solution yet. I'll try again later.



# 1. DRIVER TESTS GO BELOW THIS LINE
calc = RPNCalculator.new
puts calc.evaluate('1 2 +') == 3
puts calc.evaluate('2 5 *') == 10
puts calc.evaluate('50 20 -') == 30
puts calc.evaluate('70 10 4 + 5 * -') == 0


# 5. Reflection 
# I was quite a bit confused at first about the order of the operations.
# I figured that in order to do this, we keep iterating through the input until we see the first operator, and put it between the two most recent numbers we just iterated. The result become a new number that replaces the two old numbers.
# "numbers[0] = numbers.delete_at(0) + numbers[0]" might look not very clear, but here's how I think it does: first it delete the first element in the array and returns that number, now numbers[0] is actually the numbers[1] before deleting. The result is then assigned as a new value to numbers[0] 