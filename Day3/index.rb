# array -  is a datatype that stores a collection of values
gentech = ["Jo", "Shun"]

# access an array through index

gentech[0]
gentech[1]

# array methods
gentech.push("Alex")

gentech.pop

gentech.include?("Alex")

gentech.shift

gentech.unshift("Nands")

gentech.sample

# array mutation
# methods that change an array or an array copy accidentally
push
pop
map!
compact!
uniq!
map!

# loops - repeat a set of instructions based on the codition
for i in 1..5
    puts "hello"
end

while true
    puts "execute this code"
end

count = 0
while count < 5
    count = count + 1
    puts "counter value is #{count}"
end

# At the car park entry, display parking full if all the car park spots are taken
# - get total number of parking spots available
# - each time a car is parked increment a particular counter
# - increment the counter till the counter matches the spots available
# - once the counter matches the spots available exit the loop
# - display parking spot is full

# solution 1
parking_spots = 10
park_empty = true
spots_taken = 0

while park_empty
    # increment the spots taken counter
    spots_taken = spots_taken + 1
    if parking_spots <= spots_taken
        park_empty = false
    end
    puts "cars parked #{spots_taken}"
end

puts "parking full"

# Solution 2
parking_spots = 10
# park_empty = true
spots_taken = 0

while true
    # increment the spots taken counter
    spots_taken = spots_taken + 1
    if parking_spots <= spots_taken
        break
    end
    puts "cars parked #{spots_taken}"
end

puts "parking full"

# Solution 3:
parking_spots = 10
# park_empty = true
spots_taken = 0

while parking_spots >= spots_taken
    # increment the spots taken counter
    spots_taken = spots_taken + 1
    # if parking_spots <= spots_taken
    #     break
    # end
    puts "cars parked #{spots_taken}"
end
puts "parking full"


gentech = ["Alex","Philip","Hayden"]

for elem in gentech
  puts elem
end

gentech = ["Ewe-Lin","Salman", "ALex", nil, "Nands"]

# each, map
gentech.each do |elem|
    if(elem != nil)
        puts "welcome #{elem}"
    end
end

gentech.map do |elem|
    puts "Hello #{elem}"
end


arr = [1,2,3]
arr.map! do |elem|
    elem + 1
end

print arr   # [2,3,4]

arr = [1,2,3]
arr.each do |elem|
    elem + 1
end
print arr


x = 0
loop do 
    x = x + 1
    puts x
    if x >= 0
        break
    end
end


# difference between each and map
arr = [1,2,3]
each_result = arr.each do |elem|
   elem + 1
end
puts "each result is #{each_result}"

map_result = arr.map do |elem|
    elem + 1
end
puts "map result is #{map_result}"

arr = [1,2,3,5,10,20,15]
even_numbers = arr.map do |elem|
    if(elem % 2 == 0)
         elem
    end
end

puts "even numbers are #{even_numbers}"