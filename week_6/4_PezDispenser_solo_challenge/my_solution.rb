# U2.W6: PezDispenser Class from User Stories


# I worked on this challenge by myself.

# 1. Review the following user stories:
# - As a pez user, I'd like to be able to "create" a new pez dispenser with a group of flavors that 
#      represent pez so it's easy to start with a full pez dispenser.
# - As a pez user, I'd like to be able to easily count the number of pez remaining in a dispenser 
#      so I can know how many are left.
# - As a pez user, I'd like to be able to take a pez from the dispenser so I can eat it.
# - As a pez user, I'd like to be able to add a pez to the dispenser so I can save a flavor for later.
# - As a pez user, I'd like to be able to see all the flavors inside the dispenser so I know the order 
#      of the flavors coming up.

def assert
  raise "Assertion failed!" unless yield
end

# 2. Pseudocode
# Define initialization with an array of flavors as the only parameter
# pez_count method returns the length of the array
# get_pez method deletes the item at index 0 of the array and return that item (top of the dispender)
# add_pez method insert a new flavor at index 0 of the array
# see_all_pez method prints out all flavors in the array in order 


# 3. Initial Solution

class PezDispenser
   
   # Initialization
   def initialize(flavors)
     @flavors = flavors     
   end
   
   # Get number of pez
   def pez_count
     return @flavors.length
   end
   
   # Take a pez
   def get_pez
     return @flavors.delete_at(0)   
   end
   
   # Add a pez
   def add_pez(new_flavor)
     @flavors.insert(0, new_flavor)
   end
   
   # See all pez
   def see_all_pez
     puts @flavors
   end
end
 


# 4. Refactored Solution
# none





# 1. DRIVER TESTS GO BELOW THIS LINE

flavors = %w(cherry chocolate cola grape lemon orange peppermint raspberry strawberry).shuffle
super_mario = PezDispenser.new(flavors)
assert { super_mario.pez_count == 9 }

puts "A new pez dispenser has been created. You have #{super_mario.pez_count} pez!"  
puts "Here's a look inside the dispenser:"  
puts super_mario.see_all_pez
puts "Adding a purple pez."
super_mario.add_pez("purple")   # mmmmm, purple flavor
assert { super_mario.pez_count == 10 }

puts "Now you have #{super_mario.pez_count} pez!"
puts "Here's a look inside the dispenser:"  
puts super_mario.see_all_pez
puts "Oh, you want one do you?"
puts "The pez flavor you got is: #{super_mario.get_pez}"

puts "Now you have #{super_mario.pez_count} pez!"
assert { super_mario.pez_count == 9 }



# 5. Reflection 