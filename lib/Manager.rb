class Manager

    attr_accessor :name, :department, :age
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

    def self.all_departments
        all.map { |manager| manager.department }
    end

    def self.average_age
        sum_of_ages = all.sum { |manager| manager.age }
        sum_of_ages / all.count.to_f
    end

    def employees
        Employee.all.select { |employee| employee.manager_name == self.name }
    end

    def hire_employee(name, salary)
        Employee.new(name, salary, self)
    end
end
