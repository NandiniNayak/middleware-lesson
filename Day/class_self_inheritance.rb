# The CEO of the company wants to get an overview of all the employees in her company their respective salaries and total number of employees currently employed. Write a ruby program to display the data that CEO needs
#
# Hint: Create a Class with methods to keep track of the employee count and display employee details.
#
# Try : Implement this just using methods and then implement the same as classes and objects . List out which one worked best and why.

# Sample Test Case
#
# Name = Sarah ; Salary = 20,000
# Name = Ben ; Salary = 19,000
# Name = John ; Salary = 19,500
require_relative "class_Employee.rb"

# inheritance
class Casual < Employee
    def initialize(hourly_rate)
        @hourly_rate = hourly_rate
    end

    def get_hourly_rate
        puts "hourly rate for casual employee is $#{@hourly_rate}"
    end

    # def get_employee_deets
    #     puts "salary of #{@name} is #{@salary} with an hourly rate of $#{@hourly_rate}"
    # end

    # Ruby provides us with a built-in function called super that allows us to call methods up the inheritance hierarchy. When you call super from within a method, it will search the inheritance hierarchy for a method by the same name and then invoke it. 
    
    def get_employee_deets
        super + " hourly rate is #{@hourly_rate}"
    end
end

employee4 = Casual.new(20)
employee4.name = "Bob"
employee4.salary = "18,000"
puts employee4.get_employee_deets
employee4.get_hourly_rate


