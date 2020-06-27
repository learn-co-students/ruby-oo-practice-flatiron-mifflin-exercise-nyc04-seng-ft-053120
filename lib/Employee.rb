class Employee
  attr_reader :name, :salary, :manager, :manager_name
  @@all = []

  def initialize(name, salary, manager)
    @name = name
    @salary = salary
    @manager = manager
    @manager_name = manager.name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.paid_over(amount)
    # takes a Fixnum argument and returns an Array of all the employees whose salaries are over that amount
    self.all.select { |employee| employee.salary > amount }
  end

  def self.find_by_department(department)
    # takes a String argument that is the name of a department and returns the first employee whose manager is working in that department
    self.all.find { |employee| employee.manager.works_in_dept?(department) }
  end

  def tax_bracket
    # returns an Array of all the employees whose salaries are within $1000 (± 1000) of the employee who invoked the method
    Employee.all.select { |employee| employee.salary >= self.salary - 1000 && employee.salary <= self.salary + 1000 }
  end
end
