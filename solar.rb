#First we'll need a class to represent the solar system. Let's call it System, and give it an attribute bodies.
#bodies will start as an empty array (ie. []).

#Let's make bodies read-only, and give System an instance method called add which will add a celestial body to the list. We'll also need an instance
#method called total_mass which should add up the mass of all the bodies in bodies, and return it.

#We'll also need a class to represent the various celestial bodies. We'll call it Body. Each of them will
#need a name and a mass. Let's make these read-only; we'll assign them when we create the body.

#There are several types of bodies we're concerned about in our solar system: planets,
#stars (like our sun), and moons. We'll ignore asteroids and smaller planetoids (sorry Pluto).
#Each of our body types needs a class: Planet, Star, and Moon. All of these bodies
#have some similarities: they all have a name and a mass. So, let's also make them inherit from Body. They do have some unique qualities though.

#class variable, the blueprint is not a car, but blueprint makes the car.
#Class Variable keeps track of a property of the blueprint.


#
  #a.inject{ |sum,x| sum + x }
  #a.inject(:+)
#  --> sum of all numbers in an array
#Or slightly shorter and faster:
 #to affect System, we need an instance of System -> system is the noun, which we are making. not making mass, making the system.
#to use a second initialize inside the same method, use 'super'. when it goes in to here, do initialize, and then the super.

# --> would I want a body_num in System?
# class variable- use it when you have info you want to be available to all the instances of that class

#System + body relationship: shovel in informationship, refer to it as systems have bodies, body has no bearing on system. A Body is ap lanet or a star etc, a planet IS a body,
class System
 attr_reader :bodies

  def initialize
    @bodies = []
  end

  def add (body)
  @bodies << body
  end

  def total_mass
    @total_mass = 0
    @bodies.each do |body| #take each instance of body and do the stuff below. I have ab unch of bodies, want to get a number w/ total mass. walk through list of things and build the result
      #body.mass
      #body.mass + @total_mass
      @total_mass = body.mass + @total_mass

  end

  return @total_mass

  end

end

class Body
  attr_reader :name, :mass
  def initialize(name, mass)
    @name = name
    @mass = mass
  end
end
  #Planets:
#(earth is a planet which is a body)
  #Have a day, which is the number of hours it takes for the planet to rotate all the way around once.
  #Have a year, which is the number of days it takes for the planet to orbit the sun once. Whether you want
  #to express this in Earth days or the planet's days is up to you.
class Planet < Body
  def initialize(name, mass, day, year)
  super(name, mass)
  @day = day
  @year = year
  end

  def mass
    @mass = @mass
  end

  def year
    @year = @year
  end
end

earth = Planet.new("earth", 2, 24, 1)
saturn = Planet.new("saturn", 8, 24,3)

#Stars:

#Have a type (ie. our Sun is a G-type star)
class Star < Body
  def initialize(name, mass, type)
    super(name, mass)
    @type = @type
  end
end


#Have a month, which is the number of days it takes for the moon to orbit its planet. Again,
#this can either be Earth days or the planet's days, your choice.
 #Have a planet that they orbit. We want to store the whole Planet object here.
#Once we have our structure defined, let's start adding some things to our solar system.
#We can start with the Sun, the Earth, and the Earth's moon. Don't worry too much about getting the masses correct, any number really will do, although you can find their masses on Wikipedia if you want.
class Moon < Body
  def initialize(name, mass, month, planet) #*** Is this referencing PLANET object, or is this referncing am ethod?))
  super(name, mass)
  @month = @month
  @orbit_planet = :Planet
  end
end
