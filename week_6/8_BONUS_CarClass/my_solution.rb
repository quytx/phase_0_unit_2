# U2.W6: Create a Car Class from User Stories


# I worked on this challenge by myself.


# 2. Pseudocode
# Assume that input parameters are valid numbers ( can be negative though )
# See my comments in the solution for pseudo code

# 3. Initial Solution
class Car
  
  # Initialization with model and color
  def initialize(model, color)
    @model = model
    @color = color
    @pizzas = []
    @currSpeed = 0 
    @totalDistance = 0
    @travelLog = ""
    @numChanges = 1 # To record number of changes including turns and speed changes
  end  
  
  # Reset log for a new trip
  def resetLog
    @currSpeed = 0
    @totalDistance = 0
    @travelLog = ""
    @numChanges = 1
  end
  
  # Change speed
  def setSpeed(speed)
    raise ArgumentError.new("Speed must be a positive number") if speed < 0    
    if speed > @currSpeed
      change = "Accelerate to "
    elsif speed < @currSpeed
      change = "Reduce speed to "
    else
      return # If there is no change in speed, do nothing
    end  
    @currSpeed = speed    
    @travelLog += "#{@numChanges}. " + change + "#{@currSpeed}mph.\n"
    @numChanges += 1
  end
  
  # Get current speed
  def getSpeed
    return @currSpeed
  end
  
  # Drive forward a certain distance
  def drive(distance)
    raise ArgumentError.new("Distance must be a positive number") if distance < 0
    @totalDistance += distance
    @travelLog += "#{@numChanges}. Drive #{distance} miles at speed #{@currSpeed}mph.\n"
    @numChanges += 1 
  end
  
  # Turn right
  def turnRight
    @travelLog += "#{@numChanges}. Turn right.\n"
    @numChanges += 1 
  end
  
  # Turn left
  def turnLeft
    @travelLog += "#{@numChanges}. Turn left.\n" 
    @numChanges += 1
  end
  
  # Stop at destination
  def stop
    @travelLog += "#{@numChanges}. Arrives at destination.\n" 
    @currSpeed = 0
  end
  
  # Get total distance in the last trip
  def getTotalDistance
    return @totalDistance
  end
  
  # Print travel log
  def getTravelLog    
    puts "Here's our #{@color} #{@model}'s travel log:"
    puts "--------------------------------------"
    puts @travelLog
    puts "--------------------------------------"
    puts "Total distance traveled: #{@totalDistance} mile(s)"
    puts "======================================"
  end  
  
  def addPizza(pizza)
    @pizzas << pizza    
  end
  
  def seeAllPizzas
    puts "Pizzas for delivery: "
    puts "--------------------"
    @pizzas.each { |piz| puts piz.getType }   
    puts "--------------------"  
  end
  
  def deliverPizza
    @travelLog += "A #{@pizzas[0].getType} pizza was delivered.\n" 
    return @pizzas.delete_at(0)
  end  
end


# Pizza class
class Pizza  
  def initialize(type)
    @type = type
  end
  
  def getType
    return @type
  end  
end


# 4. Refactored Solution
# none





# 1. DRIVER TESTS GO BELOW THIS LINE
car = Car.new("Lamborghini", "Orange")

pizza1 = Pizza.new("Three meats")
pizza2 = Pizza.new("Cheese and bacon")
pizza3 = Pizza.new("Buffalo Chicken")

car.addPizza(pizza1)
car.addPizza(pizza2)
car.addPizza(pizza3)
car.seeAllPizzas

car.setSpeed(25)
car.drive(0.25)
car.turnRight
car.setSpeed(35)
car.drive(1.5)
car.getSpeed
car.setSpeed(15)
car.drive(0.25)
car.turnLeft
car.setSpeed(35)
car.drive(1.4)
car.stop

car.deliverPizza
car.getTravelLog
car.seeAllPizzas

# 5. Reflection 