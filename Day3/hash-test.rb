# what is a hash?
# key value pair

phone_book = {"nands" => "32131232", "alex" => "342736423"}
puts phone_book["nands"]

# keys must be unique
# what happens if we duplicate a key?

phone_book = {"nands" => "32131232", "alex" => "342736423"}
puts phone_book["nands"]
phone_book["saad"] = "+61212456"
puts phone_book

# hash methods
# create an empty hash
hash = {}
puts hash.empty?
puts phone_book.empty?

# list all keys
keys = phone_book.keys
p keys

# list all values
values = phone_book.values
p values

#list hash without nil values
h = { "a" => 1, "b" => 2, "c" => nil}
h.compact!
h.compact

# delete hash
h.delete("a")
puts h

# iterator block
each_result = phone_book.each do |key,value|
     puts "phone number of #{key} is #{value}"
    value = "+61" + value 
end
puts "result is #{each_result}"

map_result = phone_book.map do |key,value|
     puts "phone number of #{key} is #{value}"
    value = "+61" + value 
end
puts "result is #{map_result}"

# symbols => symbols are labels that point to a same memory location, unlike string. hence could be used in hash, for faster access.

phone_book = {:nands => "+614234", :alex => "+6134343"}
p phone_book[:nands]

phone_book = {nands: "+614234", alex: "+6123343", name: :nands}
p phone_book[:nands]
p phone_book[:name]

