class Manager
    attr_reader :name, :department, :age
    @@all = []

    def initialize(name, department, age)
        @name = name    
        @department = department
        @age = age
        save
    end

    def save
        self.class.all << self
    end

    def self.all
        @@all
    end

    def employees
        Employee.all.select do |employee|
            employee.manager == self
        end
    end
    
    def hire_employee(employee_name, employee_salary)
        Employee.new(employee_name, employee_salary, self)
    end

    def self.all_departments
        self.all.map do |manager|
            manager.department
        end
    end
    
    def self.average_age
        self.total_ages/self.num_of_managers
    end

    private
    
    def self.get_ages
        self.all.map do |manager|
            manager.age
        end
    end

    def self.total_ages
        get_ages.inject {|total_age, age| total_age + age}
    end

    def self.num_of_managers
        self.all.count
    end

end
