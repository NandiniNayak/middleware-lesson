#  The CEO of the company wants to get an overview of all the employees in her company their respective salaries and total number of employees currently employed. Write a ruby program to display the data that CEO needs
#
# Hint: Create a Class with methods to keep track of the employee count and display employee details.
#
# Try : Implement this just using methods and then implement the same as classes and objects . List out which one worked best and why.

# Sample Test Case
#
# Name = Sarah ; Salary = 20,000
# Name = Ben ; Salary = 19,000
# Name = John ; Salary = 19,500

# self is a keyword that points to itself.
# if you are at the class level self points to the class, if you are at an object level self points to the object
# class Employee
#     attr_accessor :name, :salary
#     # attr_accessor :count
#     # class variables are the variable accessed by a class
#     @@count = 0
#     # an array that keeps track of all the objects created from this class so far
#     @@employee_deets = []
#     # differentiate a class method from an instance method is through the keyword self
#     def self.count
#         @@count
#         puts "value of self in the class is #{self}"
#     end
#     def count
#         puts "method invoked at object level"
#     end
#     # self at the class level points to the class
#     def self.employee_deets
#         @@employee_deets.each {|elem| puts "the salary of #{elem.name} is #{elem.salary}"}
#     end

#     def initialize(name, salary)
#         @@count += 1
#         # create and assign instance variables
#         @name = name
#         @salary = salary
#         # self at the object level point to the object
#         puts "value of self in the object is #{self}"
#         @@employee_deets.push(self)
#     end

#     # puts "value is #{@name}"

#     def get_employee_deets
#         puts "The salary of #{@name} is #{@salary}"
#     end
# end

class Employee
    attr_accessor :name, :salary
    @count = 0
    # def self.count
    #     @@count
    # end
    # def self.some_other_class_method
    # end

    # alternate code : all my class methods shopuld be placed in between class <<self and end
    class << self 
        def count
            puts "total number of employees ar #{@count}"
        end
        def add_employee
            # @count +=1
        end
    end
    def initialize(name, salary)
        # data = self.class
        # @count += 1  not allowed
        puts "self in the initialize : #{self}"
        # call a class method
        self.class.add_employee
        @name = name
        @salary = salary
    end
      def get_employee_deets
        puts "The salary of #{@name} is #{@salary}"
    end
end
employee1 = Employee.new("BOB", "20,000")
puts employee1.name
puts employee1.salary
puts Employee.count


# inheritance : the method can be inherited or retrieved from a parent class

class CasualEmployee < Employee
    attr_accessor :hourly_rate
    # def name
    #     @name
    # end
    # def salary
    #     @salary
    # end
    def initialize(hourly_rate)
        # @name = name
        # @salary = salary
        @hourly_rate = hourly_rate
    end

   def get_employee_deets
        puts "modified in child, salary of #{@name} is #{@salary} at and hourly rate of #{@hourly_rate}"
   end
end

employee1 = CasualEmployee.new(30)
employee1.name = "Jacob"
employee1.salary = "50,000"
puts employee1.name
puts employee1.salary
employee1.get_employee_deets




# count = 0
# employee1 = Employee.new("Sarah", "20,000")
# # puts "object id of employee1 is #{employee1.object_id}"
# # count = count + 1
# # count += 1
# employee2 = Employee.new("Ben", "19,000")
# # count += 1
# employee3 = Employee.new("John", "19,500")
# # count += 1
# employee1.get_employee_deets

# # you always need a method to access any class or instance variable
# puts Employee.count
# # employee1.count
# puts Employee.employee_deets
# # puts Employee.get_employee_deets

# # puts employee1.count
# # puts "total number of employees are #{count}"


# # @employee1 = Employee.new
# # @employee1 = SomeOtherClass.new
# # name = "nandini"
# # name = "JO"