class Employee
    attr_reader :name, :salary, :manager
    @@all = []
    def initialize(name,salary,manager)
        @name = name
        @salary = salary
        @manager = manager
        save
    end

    def self.all
        @@all
    end

    def save
       self.class.all << self 
    end

    def manager_name
        self.manager.name
    end

    def self.paid_over(num)
        self.all.select do |employ_instance|
            binding.pry
            employ_instance.salary > num
        end
    end
    def self.find_by_department(department)
       dep =  Manager.all.find {|instance| instance.department == department }
       dep.employees.first
    end
    def tax_bracket
        # returns an array with employees with a similar pay +/- 1000
        # comparing self
        Employee.all.select do |employee_inst|
        (self.salary-1000...self.salary+1000) === employee_inst.salary
        end
    end
end
