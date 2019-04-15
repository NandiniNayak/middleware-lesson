# # # class Animal
# #   def make_noise
# #      p "moo!"
# #   end
# #   def something
# #     print "hi"
# #   end
# # end

# # cow = Animal.new
# # puts cow.make_noise.upcase

# # class Vehicle
# #   def model(model)
# #     model = model
# #     puts model
# #   end
# #   def test
# #     puts "model is #{model}"
# #   end
# # end

# # car1 = Vehicle.new
# # car2 = Vehicle.new

# # car1.model("BMW")
# # car2.model("Toyota")
# # puts car1.test
# # puts car2.test



# def greet
#   puts "hello"
# end

# name = "bob"
# puts name.upcase
# # name.greet

# # String, Array, Hash, Integer

# # class is a backbone of Object Oriented programming, it allows us to create objects and tell what those objects can do
# # class follows a Pascalcase
# class Animal
#   def mak_noise
#      puts "moo"
#   end
#   def eat
#     puts "chomp chomp"
#   end
# end

# cow = Animal.new
# cow.mak_noise
# cow.eat

# # class allows us to categorise our code
# # everything to do with say Animal class  can be grouped here
# # do complex thing with just a .dot notation
# # class_room.add_student

# class Car
#   def set_model(model)
#     @model = model
#   end

#   def some_other_method_acessing_model
#       puts "model in another method is #{@model}"
#   end

# end
# car1 = Car.new
# car2 = Car.new
# car1.set_model("BMW")
# car2.set_model("Toyota")
# car1.some_other_method_acessing_model
# car2.some_other_method_acessing_model

# # Note: objects can access instance variables only through a method.
# # eg: if I just wanted to fetch car model
# # instance variables
# class Car
#   def set_model(model)
#     @model = model
#   end

#   def some_other_method_acessing_model
#     puts "model in another method is #{model}"
#   end
# end

# car1 = Car.new
# car2 = Car.new
# car1.set_model("Toyota")
# # car2.some_other_method_acessing_model


# # setters syntax and variables can be accessed only via methods(getter syntax)
# class Car
#   # do not place space between method_name = and argument
#   def set_model=(model)
#     @model = model
#     @type = "sedan"
#   end

#   def get_model
#     puts @model
#   end

#   def type
#     @type
#   end
# end

# car1 = Car.new
# car2 = Car.new
# car1.set_model = "BMW"
# car2.set_model = "Toyota"
# car1.get_model
# car2.get_model
# puts car1.type


# # initialize: 

# class Car
#    def initialize(model,make)
#     @model = model
#     @make = make
#    end
   
#    def model
#     @model
#    end

#    def make
#     @make
#    end

#    def set_model=model
#     @model = model
#    end
# end

# car1 = Car.new("Toyota", 1980)
# car2 = Car.new("BMW", 2018)
# puts car1.model
# puts car2.model
# car1.set_model = "Honda"
# puts car1.model


# we need to create a whole bunch of methods to read an write to variables
# alternate : attr_accessor which allows us to read and write
# class Car
#   attr_accessor :model, :make
# end

# car1 = Car.new
# car2 = Car.new
# car1.model = "Toyota"
# car2.model = "BMW"
# puts car1.model
# puts car2.model


# attr_reader and attr_writer
# make instance variables read only : use case if we wanted to make sure variables are always set to initial value and they don't want to be modified
# attr_writer : write only , use case if we want to write a custom method to read values the way we wish it to be instead of just printing value to screen

class Car
  attr_accessor :model
  attr_reader :make
  attr_writer :color

  def initialize(model,make,color)
    @model = model
    @make = make
    @color = color
  end
  
  def change_color
    puts "color of the car #{@model} is #{@color}"
  end 
end

car1 = Car.new("Toyota", 1990, "red")
car2 = Car.new("BMW", 2018, "White")

puts car1.model
puts car1.make
puts car1.change_color
# car1.color
# car1.make = 2000


class Sedan < Car
  attr_accessor :fuel_type
  def initialize(fuel_type)
    @fuel_type = fuel_type
  end
end

porshe = Sedan.new("petrol")
puts porshe.fuel_type
porshe.model = "porsche"
puts porshe.model

