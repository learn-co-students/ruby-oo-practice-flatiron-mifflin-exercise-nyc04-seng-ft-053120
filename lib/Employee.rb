# Employee >- Department -< Manager
# Employee >- Manager
# if Employee >- Manager && Manager >- Department then microgement = mood = aggressive || hostile || difficult

class Employee
  attr_reader :name, :salary
  attr_accessor :manager_name, :mood
  @@all = []

  def initialize(name, salary, manager_name)
    @name = name
    @salary = salary
    @manager_name = manager_name
    @mood = 'content'
    @@all << self
  end

  def self.all
    @@all
  end
  
  def self.paid_over(salary)
    self.all.select {|employee| employee.salary > salary}
  end

  def self.find_by_department(department)
    manager = Manager.all.find {|manager| manager.department == department}.name
    self.all.find {|employee| employee.manager_name == manager}
  end

  def tax_bracket
    min = self.salary - 1000
    max = self.salary + 1000
    Employee.all.select { |employee| employee.salary.between?(min, max)}
  end

  def micromanagement(department)
    emotion = ['aggressive', 'hostile', 'difficult']
    manager = Manager.all.select {|manager| manager.department == department}
    if manager.count > 1
      self.mood = emotion.sample
    end
  end
end