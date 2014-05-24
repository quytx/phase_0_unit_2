# U2.W5: Virus Predictor

# I worked on this challenge by myself.

# EXPLANATION OF require_relative
# This allows us to load a file that is in a relative directory path to this file

# ANALYZE state_data
# This hash contains a map from a state to its stats (which is another hash). 
# Each state's stats is another hash map from a certain property (population, etc.) to its value 
require_relative 'state_data' 

class VirusPredictor

  def initialize(state_of_origin, population_density, population, region, regional_spread)
    @state = state_of_origin
    @population = population
    @population_density = population_density
    @region = region
    @next_region = regional_spread
  end
  
  # calculate the potential effects of the virus in the current state
  # can be called from outside of the class 
  # This method only uses instance variables of the same class, therefore it can access the variables directly
  # Hence, we don't need to pass in any parameters.
  def virus_effects      
    # predicted_deaths(@population_density, @population, @state) - ORIGINAL
    # speed_of_spread(@population_density, @state) - ORIGINAL
    # REFACTOR
    predicted_deaths
    speed_of_spread
  end

  
  # private means the below method cannot be seen or called from outside of this class
  # if private was cut and pasted above the virus_effects, we would have no way to 
  # invoke the virus_effects method from an instance varibale of VirusPredictor class
  # therefore the program would be unusable
  private  

  # def predicted_deaths(population_density, population, state) - ORIGINAL 
  # We don't need to pass in any parameters here because they all can be accessed directly within the same class
  def predicted_deaths  
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else 
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  # def speed_of_spread(population_density, state) #in months - ORIGINAL
  def speed_of_spread # REFACTOR
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else 
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

STATE_DATA.each_key do |state| 
  VirusPredictor.new(state, STATE_DATA[state][:population_density], STATE_DATA[state][:population], STATE_DATA[state][:region], STATE_DATA[state][:regional_spread]).virus_effects            
end  



