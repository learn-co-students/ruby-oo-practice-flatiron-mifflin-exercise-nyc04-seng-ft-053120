class Manager
  attr_reader :name, :age
  attr_accessor :department
  @@all = []

  def initialize(name, department, age)
    @name = name
    @department = department
    @age = age
    @@all << self
  end

  def self.all
    @@all
  end

  def employees
    Employee.all.select { |employee| employee.manager_name == self.name}
  end

  def hire_employee(employee, salary)
    Employee.new(employee, salary, self)
  end

  def self.all_departments
    self.all.map(&:department)
  end

  def self.average_age
    age = self.all.reduce(0) { |sum, manager| sum + manager.age }
    age / self.all.length.to_f
  end
end