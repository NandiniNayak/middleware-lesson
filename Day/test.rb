class Employee
  attr_accessor :name, :salary
  # class variable called count

  @count = 0
  @employee_deets = []
  # def self.count
  #   puts "value of self in class is #{self}"
  #   @@count
  # end
  
  # def self.employee_deets
  #   @@employee_deets  # instead of just showing object id, display its values
  #   @@employee_deets.each {|employee| puts "Salary of #{employee.name} is #{employee.salary}"}
  # end
  # assign all my class methods here
  class << self
    def count
      @count
    end
   
    def add_employee(obj)
      @count += 1
      @employee_deets.push(obj)
    end

    def employee_deets
      @employee_deets.each {|employee| puts "Salary of #{employee.name} is #{employee.salary}"}
    end
  end
  def initialize(name,salary)
    puts "initialize method is called each time an object is created"
    # @@count += 1
    @name = name
    @salary = salary
    puts "value of self in initialize, which gets executed when an object is created #{self}"
    # update employee_deets with newly created object employee
    # self points to the object
    # self.class.add_employee
    # @@employee_deets.push(self)
    self.class.add_employee(self)
  end

  # def name
  #   @name
  # end

  # def salary
  #     @salary
  # end
 end


employee1 = Employee.new("sarah", "20,000")
employee2 = Employee.new("Bob", "30,000")
puts employee1.name  # access employees name
puts employee1.salary  # access employees salary
puts employee2.name
puts employee2.salary
# puts @@count
puts Employee.count
# puts employee1.count

puts Employee.employee_deets
# puts employee1.employee_deets
# 

