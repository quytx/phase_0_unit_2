# U2.W6: Create a BoggleBoard Class


# I worked on this challenge by myself.


# 2. Pseudocode
# Define class BoggleBoard
# Define initilization with a single parameter (a 2D array of characters)
# Define instance method create_word as last week


# 3. Initial Solution
class BoggleBoard
  
  # Initilization
  def initialize(grid)
    @grid = grid
  end
  
  # Get letter at coordinate
  def get_char(coord)
    return @grid[coord.first][coord.last]
  end
 
 # Create a word from coordinates 
  def create_word(*coords)  
    word = Array.new
    coords.each do |coord|
      word.insert(-1, @grid[coord.first][coord.last])    
    end
    return word.join("")
  end
  
  # Access a row
  def get_row(row)
    return @grid[row]
  end
 
  # Access a column
  def get_col(col)
    return @grid.transpose[col]
  end
end

 
 
dice_grid = [["b", "r", "a", "e"],
             ["i", "o", "d", "t"],
             ["e", "c", "l", "r"],
             ["t", "a", "k", "e"]]
 
boggle_board = BoggleBoard.new(dice_grid)
 


# 4. Refactored Solution
# none

# 1. DRIVER TESTS GO BELOW THIS LINE

# create driver test code to retrieve a value at a coordinate here:
puts boggle_board.get_char([3,2]) == "k"

# implement tests for each of the methods here:
puts boggle_board.create_word([1,0],[2,2],[1,0],[3,2],[3,3],[1,0],[1,3]) == "ilikeit"
puts boggle_board.get_row(1) == ["i", "o", "d", "t"]
puts boggle_board.get_col(2) == ["a", "d", "l", "k"]

# 5. Reflection 
# I like object-oriented programming. It feels more intuitive to me, as almost everything in real world
# could be treated as an object. It provides a great framework/structure for a particular program.
# There seems to be a bit more code - however, imagine if you want to create 1000 objects of the same type
# => defining an "object" with its own properties/activities (via instance variables and methods) would be the best way.

