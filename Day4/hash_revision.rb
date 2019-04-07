# # # # hash :  hash is a type of data which contains a key and value
# # # profile = {"name" => "daniel", "age" => 10, "pic" => "https://cat.jpg"}

food_order = {"item" => "burger", "price" => 10, "quantity" => 2}

# # # # arr = [1,2,3]
# # # # puts arr[0]

# # # p food_order["item"]
# # # p food_order["quantity"]
# # # # puts profile


# # # # modify a hash

# # # profile["bio"] = "I love singing"

# # # profile.delete("bio")

# # # p profile


phone_book = {:nands => "1356245", :daniel => "61434425", :ahmed => "6145677"}

# p phone_book[:name]
# # arr = [1,2,3]

# # # each method takes every element of an array or a hash and performs the task defined between the block

new_each_data = phone_book.each{ |key, value| 
    "+61" + value
}

p new_each_data

# new_data = phone_book.map { |key, value| "+61" + value} 
# p new_data
# p phone_book

# p phone_book[:nands]

# # name = "daniel"
# # puts "hello #{name}"

# phone_book = {:nands => "32716321", :daniel => "232443"}

# p phone_book[:nands]

# arr = [1,2,3,4,5]

# arr.each { |elem| p "hello" + "hayden"  }