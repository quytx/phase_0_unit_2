# U2.W6: Drawer Debugger


# I worked on this challenge by myself.

# 2. Original Code

class Drawer

  attr_reader :contents

# Are there any more methods needed in this class?

  def initialize
    @contents = []
    @open = true
  end
  
  def open
    @open = true
  end
  
  def close
    @open = false
  end 
  
  def add_item(item)
    puts "#{item.type} added"
    @contents << item
  end
  
  def remove_item(item = @contents.pop) # pop return the last item (most recently added)
    puts "#{item.type} removed"
    @contents.delete(item)
    return item
  end
  
  def dump  # This method should remove all items
    @contents = []
    puts "Your drawer is empty."
  end
  
  def view_contents
    puts "The drawer contains:"
    if @contents.empty? 
      puts "- No items"
      return
    end
    @contents.each {|silverware| puts "- " + silverware.type }
  end
end

class Silverware
  attr_reader :type

# Are there any more methods needed in this class?

  def initialize(type, clean = true)
    @type = type
    @clean = clean
  end
  
  def eat
    puts "eating with the #{type}"
    @clean = false
  end
  
  def clean_silverware
    puts "cleaning the #{type}"
  end
  
  # added method
  def clean
    @clean = true
  end
end

knife1 = Silverware.new("knife")

silverware_drawer = Drawer.new
silverware_drawer.add_item(knife1) 
silverware_drawer.add_item(Silverware.new("spoon"))
silverware_drawer.add_item(Silverware.new("fork")) 
silverware_drawer.view_contents

silverware_drawer.remove_item
silverware_drawer.view_contents
sharp_knife = Silverware.new("sharp_knife")


silverware_drawer.add_item(sharp_knife)

silverware_drawer.view_contents

removed_knife = silverware_drawer.remove_item(sharp_knife)
removed_knife.eat
removed_knife.clean_silverware
 

silverware_drawer.view_contents
silverware_drawer.dump
silverware_drawer.view_contents # should return an empty array after dumping


# added for purpose of testing the bonus function
silverware_drawer.add_item(Silverware.new("new fork"))
silverware_drawer.view_contents

fork = silverware_drawer.remove_item # fork will be nil
silverware_drawer.view_contents

# fork.eat # will give an error
fork.eat if fork != nil # debugged


# Bugs
# 1. Missing "end" for Drawer class
# 2. Drawer.add_item missing parameter "item"
# 3. Undefined clean_silverware method in Silverware class
# 4. Method Drawer.dump should empty the content 
# 5. Drawer.remove_item() method should return the item that was removed
# 6. Drawer.remove_item() will return nil if the drawer is empty, so fork.eat will give an error because fork is nil in this case => need to check if fork is nil before invoking the eat method
# 7. Undefined method "clean" => this method should set the Silverware's "clean" status to true

#BONUS SECTION
puts fork.clean

# DRIVER TESTS GO BELOW THIS LINE



# 5. Reflection
# It was fun playing around with the classes and methods. I very much got the idea of object-oriented programming where we can think of classes as real objects and methods as the objects' actions/properties 