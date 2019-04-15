# what is a block
# block is a piece of code that is passed as an argument to a method

names = ["Alex","Saad", "Sally"]

names.each do |name|
    puts "Welcome #{name}"
end

names.each { |name| 
    puts "Weclome #{name}"
    puts "How are you #{name}"
}

# list some methods
puts  # accept an argument string, return nil
include? #accepts an string or an array and returns true/false
has_key? #accepts a hash and return true or false
# sample
# map
# capitalize
# def name
#     code
# end

name = "Alex"
def greet(name)
    puts "hello #{name}"
end
greet(name)
def add(num1, num2)
    sum = num1 + num2
    return sum
end
result = add(10,20)
puts "Sum of two numbers is #{result}"

def greet
  puts "before yield"
  yield
  puts "after yield"
end
greet {
    puts "hello world"
    puts "something else"
}


# yield takes parameters / arguments
def add(num1, num2)
    sum = num1 + num2
    diff = num1 - num2
    yield(diff, sum)
    puts "some othe piece of code is executed"
end
add(10, 20) { |elphant, monkey| 
    puts "sum of two number is #{elephant}" 
    puts "difference of two numbers is #{monkey}"
}

def greet
    name = "nands"
    age = 10
    yield(name, age)
end

# # hello Nands you are 10 years old
greet {|name,age| puts "Hello #{name}, you are #{age} years old"}

def greet
    # name1 = "Alex"
    # name2 = "nands"
    yield("Alex")
    # yield(name2)
    puts "hello world"
    puts "the value of the variable name outside block is #{name}"
end

greet {|name| puts "value of variable name in the block is #{name}"}

def add(num1, num2)
    sum =num1 +num2
    diff = num1 - num2
    product = num1 * num2
    yield(sum, diff, product, "Michael")
    puts "name is #{name}"
end
add(num1, num2) { |result, diff, product, name| 
    puts "sum of two numbers is #{result}"
    puts "diff is #{diff}"
    puts "product is #{product}"
    puts "Hello #{name}"
}


names = ["Alex", "Saad", "Sally"]
names.each { |name| puts "Welcome #{name}"}

def my_each(names)
    # you are not allowed to use the inbuilt method each
    # write your code here
    #hint: you will have to use a loop
    counter = 0
    while counter < names.length
        yield(names[counter],"hello")
        counter+=1
    end
    # for name in names
    #     yield name
    # end
end
my_each(names){|name, text| puts "Welcome #{name}"}
