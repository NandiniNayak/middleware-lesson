puts "\nBirthday gesserrrrrrrrr\n"
month_list = ["Jan","Feb","Mar","Apr","May",
"Jun","Jul","Aug","Sep","Oct",
"Nov","Dec"]
date_list =[1,2,3,4,5,6,7,8,9,10,11,
12,13,14,15,16,17,18,19,20,21,
22,23,24,25,26,
27,28,29,30,31]
while true
     month = month_list.sample
    puts month
    ask = gets.chomp
    
    break if ask == "yes" 
    
end
while true
    date = date_list.sample
    puts date
    ask2 = gets.chomp
    break if ask2 == "yes"
end
  puts "Your birthday is #{date} of #{month}"