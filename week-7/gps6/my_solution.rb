
# Virus Predictor

# I worked on this challenge with Ayaz
# We spent [2] hours on this challenge.

# EXPLANATION OF require_relative
# 
# require_relative followed by a filename in quotation marks will allow the program to utilize 
# written code from specified file. 
# 
# require_relative and require perform similarly, however require suffers from a problem (shared by load
# and auto_load).
#
# require_relative is used when the location of the file we're loading is relative to the 
# file we're loading it from - they're both in the same directory.

require_relative 'state_data'

class VirusPredictor
# the initialize method ititializes the class variables.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
# calling both class methods.
  def virus_effects
    predicted_deaths()
    speed_of_spread()
  end

  private
# The higher the density of the larger the death toll by state.
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      factor = 0.4
    elsif @population_density >= 150
      factor = 0.3
    elsif @population_density >= 100
      factor = 0.2
    elsif @population_density >= 50
      factor = 0.1
    else
      factor = 0.05
    end
    number_of_deaths = (@population * factor).floor
    print "#{@state} will lose #{number_of_deaths} people in this outbreak"
  end
# The higher the density of the larger the faster spread of the virus.
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    
    if @population_density >= 200
      speed = 0.5
    elsif @population_density >= 150
      speed = 1
    elsif @population_density >= 100
      speed = 1.5
    elsif @population_density >= 50
      speed = 2
    else
      speed = 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"
  end
end


STATE_DATA.each_pair do |key, value|
  state = VirusPredictor.new(key, value[:population_density], value[:population])
  state.virus_effects
end

=begin 
What are the differences between the two different hash syntaxes shown in the state_data file?

> Outer hash uses Rocket notation and Inner hash uses symbol notation.
  Outer hash keys are strings, Inner hash keys are symbols

What does require_relative do? How is it different from require?

> require_relative followed by a filename in quotation marks will allow the program to utilize 
# written code from specified file. 
# 
# require_relative and require perform similarly, however require suffers from a problem (shared by load
# and auto_load).
#
# require_relative is used when the location of the file we're loading is relative to the 
# file we're loading it from - they're both in the same directory.

What are some ways to iterate through a hash?

> The each method, the each_pair method are two ways to do this.

When refactoring virus_effects, what stood out to you about the variables, if anything?

> speed didn't need to be declared and then incremented. We created factor in the predicted_deaths method. Local and global
  variables are used in the methods.

What concept did you most solidify in this challenge?  

> Variable scope, new methods, including additional files, control flow, refactoring

=end
