class Employee
    attr_reader :name, :salary, :manager_name
    @@all = []

    def initialize(name, salary, manager_name)
        @name = name
        @salary = salary
        @manager_name = manager_name.name
        @@all << self
    end

    def self.all
        @@all
    end

    def self.paid_over(amount)
        all.select { |employee| employee.salary > amount}
    end

    def self.find_by_department(department)
        # departments are in the manager class, get manager for department
        manager = Manager.all.find { |manager| manager.department == department }
        # get first employee for manager
        all.find { |employee| employee.manager_name == manager.name }
    end

    def tax_bracket
        Employee.all.select { |employee| employee.salary.between?(self.salary - 1000, self.salary + 1000) }
    end
end
