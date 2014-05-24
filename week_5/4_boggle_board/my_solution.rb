# U2.W5: A Nested Array to Model a Boggle Board

# I worked on this challenge by myself.

$boggle_board = [["b", "r", "a", "e"],
                ["i", "o", "d", "t"],
                ["e", "c", "l", "r"],
                ["t", "a", "k", "e"]]
  
  
# Part 1: Access multiple elements of a nested array

# Pseudocode
# Define a method that creates words from letters in the board
# 1. Input: the boggle board, and list of coordinates of letters
# 2. Put all letters together in the final word


# Initial Solution
def create_word(board, *coords)  
  word = Array.new
  coords.each do |coord|
    word.insert(-1, board[coord.first][coord.last])    
  end
  return word.join("")
end

# Refactored Solution
# The given method using Array.map is quite good. I think it's the shortest way


# DRIVER TESTS GO BELOW THIS LINE
puts create_word($boggle_board, [0,1], [0,2], [1,2])

# Reflection 


#-------------------------------------------------------------------------------

# Part 2: Write a method that takes a row number and returns all the elements in the row.  

# Pseudocode

# Initial Solution
def get_row(row)
  return $boggle_board[row] # Have to make boggle_board a global variable
end


# Refactored Solution
# Solution 1
=begin
  

def get_row(board, row)
  return board[row]
end

=end

# Solution 2 - make boggle_board a class
=begin  

class boggleBoard 
  # Initilize
  def initialize(board)
    @board = board
  end
  # get row method
  def get_row(row) 
    return board[row]
  end  
end

=end

# DRIVER TESTS GO BELOW THIS LINE
puts get_row(1)

# Reflection 
# Since the given method header does not include a board reference, it has to be done in either way:
# 1. Make boggle_board a global variable so that it can be accessed by the other methods - not good practice
# 2. Add another parameter to get_row and get_col method, i.e get_row(board, row) and get_col(board, col) - better
# 3. Create a class named boggle_board, define get_row, get_col as instance methods - I think this would be the best way to do 





#-------------------------------------------------------------------------------

# Part 3: Now write a method that takes a column number and returns all the elements in the column.

# Pseudocode
# Transpose the original array to a new array, then return the corresponding row 

# Initial Solution
def get_col(col)
  return $boggle_board.transpose[col]
end


# Refactored Solution
# Solution 1

=begin  

def get_col(board, col)
  return board.transpose[col]
end

=end

# Solution 2 - make boggle_board a class
=begin
  

class boggleBoard 
  # Initilize
  def initialize(board)
    @board = board
  end
  # get col method
  def get_col(col) 
    return board.transpose[col]
  end  
end

=end

# DRIVER TESTS GO BELOW THIS LINE
puts get_col(1)

# Reflection 
# Since the given method header does not include a board reference, it has to be done in either way:
# 1. Make boggle_board a global variable so that it can be accessed by the other methods - not good practice
# 2. Add another parameter to get_row and get_col method, i.e get_row(board, row) and get_col(board, col) - better
# 3. Create a class named boggle_board, define get_row, get_col as instance methods - I think this would be the best way to do 
# 4. For get_col(col) method, I used Array.transpose which return a new array transposed from the original one  
