class Manager
  attr_reader :name
  attr_accessor :department, :age 

  @@all = []

  def initialize(name, department, age)
    @name = name
    @department = department
    @age = age
    @@all << self
  end

  def employees
    Employee.all.select { |employee| employee.manager == self}
  end

  def hire_employee(name, salary)
    Employee.new(name, salary, self)
  end

  def self.all_departments
    self.all.map { |manager| manager.department }.uniq
  end

  def self.average_age
    age_total = self.all.reduce(0) {|total, manager| total += manager.age }
    manager_total = self.all.length
    age_total.fdiv(manager_total)
  end

  def self.all 
    @@all
  end
end
