class Car
  def set_model=model
    # puts "Toyota"
    # puts model
    model = model
    # instance variable is used to pass variables between the methods in the same instance
    @model = model
  end
    # not allowed gives a nil value
    #  @color = "red"

  def get_model
    puts @model
    puts @color
  end
end
# create an object
car1 = Car.new
# call set_model method
# car1.set_model("BMW")
# alternate syntax
car1.set_model="BMW"
car2 = Car.new
car2.set_model="Toyota"
car1.get_model
car2.get_model


# Every instance variable inside a class has to be accessed via a method.
# instead an alternate provide by ruby is attr_accessor
class Car
    # setter and a getter method
    attr_accessor :model, :year, :color, :elephant
    # def make=make
    #     @make=make
    # end
    # def make
    #     @make
    # end
    def initialize(model, year, color)
        @model = model
        @year = year
        @color = color
        puts "runs each time an object is created"
    end
    def custom_method
        puts "the color of my car #{@model} is #{@color}"
    end
end
# set initial value to the variables while creating an object
car1 = Car.new("Jaguar", 2011, "white")
car2 = Car.new("MacLaren", 2018, "black")
puts car1.year
car3 = Car.new
car1.model = "Honda"
car2.model = "Benz"
puts car1.model
puts car2.model
car1.make = 2018
car2.make = 2017
# # setting value
car1.color = "red"
car2.color = "black"
# getting value
puts car1.color
puts car2.color
# # customize apart from just setting and getting values
car1.custom_method

car1.elephant = "trumpet"
puts car1.elephant


