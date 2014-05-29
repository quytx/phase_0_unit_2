# U2.W6: Testing Assert Statements

# I worked on this challenge[by myself.


# 2. Review the simple assert statement

def assert
  raise "Assertion failed!" unless yield
end

name = "bettysue"
assert { name == "bettysue" }
assert { name == "billybob" }

# 2. Pseudocode what happens when the code above runs
# Function assert raises an error if and only if the block of code right after assert{ ... }
# returns false
# So when the above code runs, assert { name == "bettysue"} would not give an error (it prints out nothing)
# However the second call of assert { name == "billybob"} will result in an error. The program crashes.


# 3. Copy your selected challenge here
class CreditCard
  
  # Initilization
  def initialize(cardNum)
    if (cardNum < 1000000000000000 || cardNum > 9999999999999999)
      raise ArgumentError.new("card number must have exactly 16 digits")
    end
    @cardNum = cardNum
  end
  
  # Check if a 16-digit card number is valid
  def check_card
    
    # Create an array to hold all digits in number format
    digits = Array.new
    
    # Add each digit to the array
    @cardNum.to_s.each_char { |digit| digits.insert(-1, digit.to_i) }
    
    # Double the numbers at even indexes
    for i in (0..15).step(2)
      digits[i] = digits[i] * 2
    end
    
    # Join the array's elements into a string and calculate sum of all digits
    sum = 0
    digits.to_s.each_char { |digit| sum += digit.to_i }
    
    # Return true if and only if the result is a multiple of 10, false otherwise
    return (sum % 10) == 0    
  end

end



# 4. Convert your driver test code from that challenge into Assert Statements
card_1 = CreditCard.new(4408041234567893)
card_2 = CreditCard.new(1111111111111111)

assert { card_1.check_card } 
assert { card_2.check_card } # will cause an error



# 5. Reflection
# The yield block in ruby is very interesting. I am thinking of it as a parameter in the form of a block code
# which can be passed into a function/method. 
# I can see a lot of potential usefulness of the yield block rather than just for this particular assert function
