# what is a method
# set of instructions grouped together to perform a certain task to keep our code DRY

# def tie_my_shoes
#     puts "grab shoe laces"
#     puts "twist and tie them around"
#     puts "tie a knot"
# end

# tie_my_shoes
# tie_my_shoes

# take another example
# cook sphagetti and rice

def cook(item, cooking_time)
    puts "Fill sauce pan with water"
    puts "Bring sauce pan to boil"
    puts "Add #{item}"
    puts "Boil for #{item} minutes"
    puts "#{item} is ready"
end

puts "How to cook Spahgetti"
cook("pasta", 15)
puts "------------------"
cook("rice", 10)
# puts "how to cook Sphagetti"
# puts "Fill sauce pan with water"
# puts "Bring sauce pan to boil"
# puts "Add Sphagetti"
# puts "Boil for 15 minutes"
# puts "Sphagetti is ready"

# puts "--------------"
# puts "How to cook rice"
# puts "Fill Sauce pan with water"
# puts "Bring sauce pan to boil"
# puts "Add rice"
# puts "Boil for 10 min"
# p "rice is ready"