# U2.W6: Refactoring for Code Readability
# I worked on this challenge by myself.
# Original Solution

class CreditCard
  def initialize(numbers)
    @numbers = numbers.to_s
    raise ArgumentError.new("Please enter a 16 digit number.") unless @numbers.length == 16
  end

  def check_card
    num_array = @numbers.split("").map(&:to_i)
    evens_array = []
    odds_array = []
    (0..15).step(2) {|x| evens_array << num_array[x]*2}
    (1..15).step(2) {|x| odds_array << num_array[x]}
    evens_array = evens_array.join.split("").map!(&:to_i)
    sum = 0
    (evens_array + odds_array).each {|x| sum += x}
    if sum % 10 == 0
    return true
    else
    return false
    end
  end
end

# Refactored Solution
class CreditCard
  def initialize(numbers)
    raise ArgumentError.new("Please enter a 16 digit number.") unless numbers.to_s.length == 16
    @numbers = numbers.to_s
  end

  def check_card
    num_array = @numbers.split("").map(&:to_i)
    evens_array = []
    odds_array = []
    (0..15).step(2) {|x| evens_array << num_array[x]*2}
    (1..15).step(2) {|x| odds_array << num_array[x]}
    evens_array = evens_array.join.split("").map!(&:to_i)
    sum = 0
    (evens_array + odds_array).each {|x| sum += x}
    return sum % 10 == 0
  end
end

# DRIVER TESTS GO BELOW THIS LINE
card = CreditCard.new(4408041234567893)
puts card.check_card

# Reflection 