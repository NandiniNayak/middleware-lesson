# what is a block??
# list some methods
# has_key?  accepts an argument hash and returns true or false
# include?   accepts an array or string and returns true or false
# puts accepts a string as an argument and returns nil


# methods with arguments
def greet(name)
    puts "welcome #{name}"
end

name = "nands"
greet(name)

# method with return values
def add(num1, num2)
    sum = num1 + num2
    return sum
end

result = add(10,20)
puts "result is #{result}"

# what is a block??...block is a piece of code passed as an argument to a method

# each 
arr = ["Alex","nands", "Saad"]

arr.each { |name|
    puts "welcome #{name}" 
    puts "how are you #{name}"
}

# how do we create a method that accepts block
def do_something
    yield
end

do_something { puts "hello world"}

def how_yield_works
    puts "before yield"
    yield
    puts "after yield"
end
how_yield_works {puts "replace yield with thsi line of code"}


def add(num1, num2)
    sum = num1 + num2
    return sum
end
result = add(num1, num2)
puts "sum of two numbers is #{result}"

def total(num1, num2)
    sum = num1 + num2
    yield(sum)
end
total(10,20) {|result| puts "sum of two numbers is #{result}"}



names = ["Alex", "nands", "saad"]

# names.each { |name| puts "hello #{name}"}

def my_each(names)
     i = 0
     while i < (names.length)
        yield names[i]
        i = i + 1
    end
end

my_each(names) {|name| puts "welcome #{name}"}

# test = names.map {|name| puts "welcome #{name}"}
# puts "test result is #{test}"

def my_map(names)
    i=0
    new_arr = []
    while i < names.length
        yield names[i]
        new_arr.push(yield names[i])
        i = i + 1
    end
    return new_arr
end

test = my_map(names) { |name| puts "welcome #{name}"}
puts "test result is #{test}"

num = [10,20,30]

result = my_map(num) { |num| num > 20}
puts "result is #{result}"


challenges:

1. Create a method `total` that takes two numbers and returns their sum.
    puts total(4,4) # -> 8 

    1.1 Adjust your method so you can yield blocks. I.e. when you're done, the following code should work:

        total(4,4) { |addition_total| puts "Addition total is #{addition_total}"}

    1.2 Update your method so you can access subtraction_total in your block too. I.e. when you're done, the following code should work:

    total(4,4) { |addition_total, subtraction_total|
    puts "Addition total is #{addition_total}" # -> 8
    puts "Subtraction total is #{subtraction_total}" # -> 0
    }

2. Understand how array inbuilt map method works in blocks and recreate your custom map method

numbers = [1,2,5,10,15,20]
def my_map(numbers)
    # your code 
end

result = my_map(numbers) { |num| num > 5}
puts "result is #{result}"     #[false,false,false,true,true,true]

# class Vehicle
#     def initialize
#         @engine = true
#         @branke = true
#     end
#     def engine
#         @engine
#     end
# end

# car = Vehicle.new
# p car.engine