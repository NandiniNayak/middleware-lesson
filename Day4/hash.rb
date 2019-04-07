# names = ["nands","Alex" , "Alex"]
# numbers = ["+632131423", "+61212324"]

# # hash : key value pair
phone_book = { "nands" => "32456", "Alex" => "344455"}

# # access hash elements only through the key
# # puts phone_book["nands"]
# phone_book["Aidan"] = "6145677487"
# # puts phone_book

# phone_book["Alex"] = "2122"
# # puts phone_book

# hash methods

# puts phone_book.keys
# puts phone_book.values

# phone_book.delete("Alex")
# puts phone_book


# each and map
# phone_book.each do |key, value|
#     value = "+61" + value
# end
# puts "Each result is:  #{each_result}"

map_result = phone_book.map do |key, value|
    value = "+61" + value
end
puts "the rmap result is #{map_result}"
puts "phone book for map without exclamation is: #{phone_book}"

# phone_book.map! do |key, value|
#     value = "hello" + value
# end
# puts "value of phone book with map!:#{phone_book}"