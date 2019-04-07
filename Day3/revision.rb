# puts "enter your name"
# name = gets.chomp
# puts "welcome #{name}"

# # control flow 
# age = 15
# if age > 18
#     puts "Allow in bar"
# else
#     puts "do not allow"
# end

# balance = 0
#     puts "what do you want to do"
#     user_input = gets.chomp
#     if user_input == "deposit"
#         balance = balance + 20
#         puts "my balance in deposit is #{balance}"
#     elsif user_input == "withdraw"
#         if balance > 0
#             balance = balance - 20
#             puts "my balance after withdraw is #{balance}"
#         else
#             puts "you are broke you dont have enough money"
#         end
#     elsif user_input == "show balance"
#         puts "your balance is #{balance}"
#     else 
#         puts "wrong key try again"
#     end


# for i in 1..5
#     puts "hello"
# end

# while true
#     puts "execute this code"
# end

# count = 0
# while count < 5
#     count = count + 1
#     puts "counter value is #{count}"
# end



# # google allows only three wrong attempts
# wrong_attempt = 0
# while wrong_attempt < 3
#     puts "enter user name"
#     user_name = gets.chomp
#     puts " enter password"
#     password = gets.chomp
#     if(user_name == "shun") && (password == "123456")
#         puts "all good you can use your gmail now"
#     else
#         wrong_attempt = wrong_attempt + 1
#         puts "wrong user name and password try again"
#     end
# end
# puts "you are locked out, you have crossed 3 attempts contact gmail for reset"


lunch = {name: "nandini", time: "12:30 PM", food: "rice and curry"}
lunch[:price] = 10

puts "hello #{lunch[:name]}, your lunch time is #{lunch[:time]} and you had yummy #{lunch[:food]} and you spent #{lunch[:price]} on your lunch"