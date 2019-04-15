class Employee
    attr_accessor :name, :salary
    @@count = 0
    @@current_employee = []
    
    def self.count
        @@count
    end

    def self.current_employee
        @@current_employee.each {|employee| puts "employee is #{employee.name} and #{employee.salary}"}
        puts "self is #{self}"
    end

    def initialize(name, salary)
        @name = name
        @salary = salary
        @@count +=1
        puts "self in object is: #{self}"
        @@current_employee.push(self)
    end

    def get_employee_deets
        "Salary of #{@name} is #{@salary}"
    end
end

# alternate way of coding without class variable notation
class Employee
    attr_accessor :name, :salary
    @count = 0
    @current_employee = []
    
    class << self
        def count
            @count
        end
        def add_employee(obj)
            @count +=1
            @current_employee.push(obj)
        end
    end
    
    # class << self
    
    # end

    def self.current_employee
        @current_employee.each {|employee| puts "employee is #{employee.name} and #{employee.salary}"}
        puts "self is #{self}"
    end

    def initialize(name, salary)
        @name = name
        @salary = salary
        # @@count +=1
        puts "self in object is: #{self}"
        # @@current_employee.push(self)
        self.class.add_employee(self)
    end

    def get_employee_deets
        "Salary of #{@name} is #{@salary}"
    end
end


employee_count = []
employee1 = Employee.new("Sarah", "20,000")
puts "employee1 object id is #{employee1}"
employee_count.push(employee1)
employee2 = Employee.new("Ben", "19,000")
employee_count.push(employee1)
employee3 = Employee.new("John", "19,500")
employee_count.push(employee1)

employee1.get_employee_deets
employee2.get_employee_deets
employee3.get_employee_deets
# employee3.get_hourly_rate
puts  "total number of employees are #{employee_count.length}"
puts Employee.count
puts Employee.current_employee