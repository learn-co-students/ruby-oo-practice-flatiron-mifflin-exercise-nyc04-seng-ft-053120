class Manager
  attr_reader :name, :department, :age, :employees
  @@all = [] 

  def initialize (name, department, age)
    @name = name
    @department = department
    @age = age
    @employees = []
    @@all << self
  end

  def self.all
    @@all
  end

  def hire_employee(name, salary)
    # takes a String argument and a Fixnum argument of an employee's name and the employee's salary, respectively, and adds that employee to the list of employees that the manager oversees
    self.employees << Employee.new(name, salary, self)
  end
    
  def self.all_departments
    # returns an Array of all the department names that every manager oversees
    self.all.map { |manager| manager.department }
  end

  def self.average_age
    # returns a Float that is the average age of all the managers
    sum_age = self.all.reduce(0) { |sum, manager| sum + manager.age }
    total_managers = self.all.count

    sum_age * 1.0 / total_managers
  end

  def works_in_dept?(department)
    # helper function that checks if self/an instance of manager works in the specified department
    Manager.all.each { |manager| return true if manager.department == department && manager == self }
    false
  end
end
