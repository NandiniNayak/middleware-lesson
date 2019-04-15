# class is a back bone of oops : in which a bunch of methods are grouped to define properties for the objects 

# class naming convention: PascalCase
class Animal
    def make_noice(noice)
        puts noice
        # puts "moo"
    end

    def walk
        puts "I can walk"
    end

    def eat
        puts "chomp chomp"
    end
end
# create an object
cow = Animal.new
dog = Animal.new
cow.make_noice("moo")
# cow.walk
# cow.eat
dog.make_noice("bark")
# dog.walk
# dog.eat
# class has a PascalCase
class Car
    def set_model=model
        # instance variables are accessible everywhere in that instance
        @model = model
        @make = 1990
        # puts model
        @type = "sedan"
    end
    # add variavle out side a method
  
    #  methods are always snake_case
    def get_model
        puts @model
    end
    # to access a variable outside of the class you always need a method
    def get_make
        puts @make
    end
    def get_type
        puts @type
    end

end
# create an object
car1 = Car.new
# car1.set_model("BMW")
# alternate syntax to set a value
car1.set_model = "BMW"
car2 = Car.new
# car2.set_model("Toyota")
car2.set_model = "Toyota"
car1.get_model
car2.get_model
car1.get_make
car1.get_type


# alternative for getter and setter method
class Car
    attr_accessor :model  # you can both read and write values
    def model=model
        @model=model
    end
    def model
        @model
    end
    attr_reader :make   #you can only get value
    attr_writer :color  # you can only set value
    # initialize is a method that executes everytime an object/instance is created
    def initialize(model,make,color)
       @model = model
       @make = make
       @color = color
    end

    def get_customised_color
        @color = "rainbow" + @color
        puts "The color of #{@model} is #{@color}"
    end
end
# create an object
car1 = Car.new("BMW", 2018, "red")
car2 = Car.new("Toyota", 2011, "rainbow")
# write to model
car1.model="BMW"
# read the model
puts car1.model
# car1.make=1990
puts car1.make
car1.color = "red"
puts car1.get_customised_color










