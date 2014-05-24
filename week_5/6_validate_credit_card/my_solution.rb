# U2.W5: Class Warfare, Validate a Credit Card Number


# I worked on this challenge by myself.

# 2. Pseudocode

# Input: credit card number in number format
# Output: true if the card number is valid, false otherwise
# Steps:
# 1. Convert credit card number to an array of numbers, order preserved
# 2. Double the numbers at even indexes (0,2,4..14)
# 3. Convert the array to string
# 4. Sum all numbers in the string
# 5. Return true if the sum is a multiple of 10, false otherwise

# 3. Initial Solution

# Don't forget to check on intialization for a card length
# of exactly 16 digits


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



# 4. Refactored Solution


# 1. DRIVER TESTS GO BELOW THIS LINE
card = CreditCard.new(4408041234567893)
puts card.check_card


# 5. Reflection 
# It looks like the conversion back and forth between string and number is not the # most concise way to do, however I cannot think of any improvement yet.