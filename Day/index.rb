# at the car park entry, display parking full if all the car park spots are taken
# - get total number of parking spots available
# - each time a car is parked increment a particular counter
# - increment the counter till the counter matches the spots available
# - once the counter matches the spots available exit the loop
# - display parking spot is full

parking_spots = 10;
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

gentech = ["Alex","Philip","Hayden"]

for elem in gentech
  puts elem
end

for i in 2..5
    puts i
end

gentech = ["Ewe-Lin","Salman", "ALex", nil, "Nands"]

# each, map

gentech.each do |elem|
    if(elem != nil)
        puts "welcome #{elem}"
    end
end

gentech.map do |elem|
    puts " Hello #{elem}"
end


arr = [1,2,3]
arr.map! do |elem|
    elem + 1
end

print arr

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

arr = [1,2,3]
each_result = arr.each do |elem|
   elem + 1
end
puts "each result is #{each_result}"

map_result = arr.map do |elem|
    elem + 1
    # puts "inside map: each value is #{elem + 1}"
    
end
puts "map result is #{map_result}"