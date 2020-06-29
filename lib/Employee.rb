class Employee
    attr_accessor :name, :salary, :manager
    @@all = []

    def initialize(name, salary, manager)
        @name = name
        @salary = salary
        @manager = manager
        save
    end

    def save
        self.class.all << self
    end

    def self.all
        @@all
    end

    def self.paid_over(amount)
        self.all.select do |employee|
            employee.salary > amount
        end
    end

    def self.find_by_department(department_name)
        self.all.find do |employee|
            employee.manager.department == department_name
        end
    end

    def tax_bracket
        self.class.all.select do |employee|
            (employee.salary < (self.salary + 1000)) && (employee.salary > (self.salary - 1000))
        end
    end
end
