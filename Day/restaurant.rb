# 1. display menu for the user
# 2. get user input for the order
# 3. get the quantity
# 4. calculate the price
# 5. keep repeating step 1-4, until user wnats to exit
# 6. display total price.

# concepts:
# # 1. bill for each customer is different however stuff ordered will be from the menu, 
# hence Customer is the class and customer1,2,3 will be objects
# 2. class Customer contains following methods.
# 1. display menu
#  menu list (in hash format)
# 2. based on user input, fetch the price of the dish
# 3. calculate total price
# 4. while loop. 

class Customer
    def initialize
        
    end
    def menu
        @menu = {"1.Burger" => "$6" , "2.Hash Brown" => "$2", "3.Cheese Burger" => "$7"  }
        @menu_list = {1 => 6 , 2 => 2 , 3 => 7}
        @menu.each { |food,price| puts " #{food} ----- #{price} " }
    end

end

customer1 = Customer.new
customer1.menu