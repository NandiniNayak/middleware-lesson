# include a peice of functionality into any class
module SpecificFunctionality
    def swim
        puts "I can swim"
    end
end

class Animal
    # def self.swim
    #   puts "i can swim"
    # end
end

class Fish < Animal
    include SpecificFunctionality
end

class Mammal < Animal
end

class Dog < Mammal
    include SpecificFunctionality
end
class Cat < Mammal
end
fish1 = Fish.new
dog1 = Dog.new
cat1 = Cat.new
fish1.swim
dog1.swim
cat1.swim
# Fish.swim
# Dog.swim
# Cat.swim