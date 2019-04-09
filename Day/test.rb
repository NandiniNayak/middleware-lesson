# what is block
# block is a piece of code passed as an argument to a method

names = ["Alex", "saad", "nands"]

names.each do |name|
    puts "Welcome #{name}"
end

names.each { |name| 
    puts "welcome #{name}"
    puts "how are you #{name}"
}


