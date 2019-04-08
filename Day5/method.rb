# # methods are verbs of programming
# # group sequence of instructions together to perform a certain task

# tie_shoe_laces
# grab shoes laces
# twist andf tie them around
# tie a knot

# syntax
# def name_of_the_method
#     code
# end


# # # method definition
# def tie_shoe_laces
#     puts "grab shoe laces"
#     puts "twist and tie them around"
#     puts "tie a knot"
# end

# # # method call
# tie_shoe_laces
# tie_shoe_laces
# tie_shoe_laces

# puts " How to make Rice"
# puts " Add water to Sauce pan"
# puts "Place Sauce pan on stove"
# puts " Bring water to boil"
# puts "Add rice"
# puts "Cook rice for 10 minutes"
# puts "How to cook Sphagetti"
# puts "Add water to Sauce pan"
# puts "Place Sauce pan on Stove"
# puts "Bring water to boil"
# puts "Add Pasta"
# puts "Cook pasta for 15 minutes"

# def cook(item, time)
#     puts "How to cook #{item}"
#     puts "Add water to sauce pan"
#     puts "bring water to boil"
#     puts "Add #{item}"
#     puts "cook for #{time} minutes"
# #   code
# end

# # call method
# cook("rice", 10)
# cook("pasta", 15)

# cook("noodles", 10, "spicy")

# def cook(*data)
#    puts "--------"
#    p data[1]
#    puts "-----"
# end
# cook("rice")
# cook("pasta", 15)
# cook("noodles", 10, "spicy")

# # method_name(1,2)
# def method_name(*arg)
#   p arg  #[1,2,3]
# end

# method_name(1, 2, 3)

# def add(num1, num2)
#     sum = num1 + num2
#     puts "hello"
# end

# answer = add 1,2
# puts "the sum of two numbers is #{answer}"
# def greet
#     puts "hello"
#     return "hi"
#     puts "doesn't get executed"
# end
# greet
# result = division
# puts "the result is #{result}"

# age = 10
# if false
#     puts "allowed in bar"
# elsif  
#     puts "not allowed"
# else 
#     puts "else case"
# end
def greet
    name  = "nands"
    puts "my name in the method is #{name}"
    return name
end
returned_name = greet
puts "my name is #{returned_name}"

# variable scope outside the method
# variable in the method : local
# name  = "nands"
# def greet(name)
#     name = "Jo"
#     puts "my name in the method is #{name}"
# end
# greet(name)
# puts "my name outside method is #{name}"
# puts "my name after method is #{name}"

# name (local variable)
# $name (global)
# @@name (class variable)
# @name  (instance variable)

num1 = 10
def sum(number)
    puts number
    num2 = 20
    return num1
end
sum(num1)
puts "num1 is #{num1}"