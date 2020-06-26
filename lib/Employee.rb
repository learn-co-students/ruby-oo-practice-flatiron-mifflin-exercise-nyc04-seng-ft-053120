class Employee
  attr_reader :name 
  attr_accessor :salary, :manager

  @@all = []

  def initialize(name, salary, manager)
    @name = name 
    @salary = salary 
    @manager = manager
    @@all << self
  end

  def manager_name
    @manager.name
  end

  def tax_bracket
    own_salary = self.salary
    Employee.all.select do |employee| 
      employee.salary.between?(own_salary - 1000, own_salary + 1000) &&
      employee != self
    end
  end

  def self.paid_over(salary)
    self.all.select { |employee| employee.salary > salary }
  end

  def self.find_by_department(department)
    self.all.find { |employee| employee.manager.department == department }
  end

  def self.all 
    @@all
  end
end
