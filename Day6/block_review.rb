# # # # block is a peice of code passed as an argument to a method
# # # # method definition
def greet
    puts "before yield"
    yield
    puts "after yield"
end
# method call
greet { puts 10 > 2}

# # # # yield can take parameters

def greet
    name = "nands"
    age = 20
    yield(name, age)
end
greet { |name, age| puts "Welcome #{name} you are #{age} years old"}

names = ["Hussein", "Salman", "Daniel", "Shun"]
# # # you can use either {} to pass a block or you could use keyword do and end to pass a block
# names.each { |name| puts "welcome #{name}" }
# # # or
names.each do |name|
    puts "welcome #{name}"
end
# # custom each method which replicates what an inbuilt array each method does
def my_each(arr)
    index = 0
    while index < arr.length
        yield(arr[index])
        # index = index + 1
        index += 1
    end
end
names = ["Hussein","Salman","Daniel","Shun"]
my_each(names) { |index| puts "Welcome #{index}" }


# # def a method that displays sum of two number and product of two numbers in a block
def math(num1,num2)
    # your code here
    sum = num1 + num2
    product = num1 * num2
    yield(sum, product)
end
math(10, 20) { |sum, product, division|
    puts "sum of two numbers are #{sum} "
    puts "product of two numbers are #{product}"
    puts "division of two number is #{division}"
}
math(10, 5) { |sum, product| 
    puts "Sum of two numbers is #{sum + 20}"
    puts "product of two numbers is#{product * 2}"
}


def nands_method
    name = "nands"
    puts "my name is #{name}"
end

def husseins_method
  name = "hussein"
  puts "my name is #{name}"
  return name
end
nands_method
name = husseins_method
puts "my name outside method is #{name}"

phone_book = {"salman" => "+6143567", "hussein" => "+6134154"}

phone_book.each {|key, value| puts "#{key}'s phone number is #{value}"}