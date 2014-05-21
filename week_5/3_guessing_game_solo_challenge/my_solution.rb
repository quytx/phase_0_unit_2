# U2.W5: Build a simple guessing game SOLO CHALLENGE


# I worked on this challenge by myself.

# 2. Pseudocode

# Input: guessed number
# Output: :high if higher, :low if lower, :correct if equal
# Steps: 
# 1. Define the initialization with 2 instance variables: answer(integer) and solved(boolean)
# 2. Implement guess method
# 3. Implement solved? method 


# 3. Initial Solution

class GuessingGame
  def initialize(answer)
    @answer = answer # store the correct answer for each GuessingGame object
    @solved = false # to keep track of whether or not the last guess was correct
  end
  
  # guess method return feedback for a guess
  def guess(guessNum)        
    if guessNum < @answer
      @solved = false # If we implement our game in the way that it stops whenever a guess is correct, this line might not be needed
      return :low
    elsif guessNum > @answer
      @solved = false
      return :high 
    else
      @solved = true 
      return :correct      
    end
  end
  
  # solved method
  def solved?
    return @solved
  end
end




# 4. Refactored Solution
# none





# 1. DRIVER TESTS GO BELOW THIS LINE






# 5. Reflection 
