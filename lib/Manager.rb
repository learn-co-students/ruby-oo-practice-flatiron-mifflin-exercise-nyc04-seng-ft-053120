class Manager
    attr_reader :name, :age, :department, :employee
    
    @@all = []
    def initialize(name,department,age)
        @name = name
        @age = age
        @department = department
        @@all << self
    end

    def self.all
        @@all
    end

    def employees
       Employee.all.select do |instance|
            instance.manager == self
       end
    end

    def hire_employee(employee, employee_salary)
        # creates a new employee with the argument since its string
        # adds this employee to the respective manager(self)
        Employee.new(employee,employee_salary, self)
    end

    def self.all_departments
        self.all.map { |manager| manager.department }
    end

    def self.average_age
        # add all ages 
        # divide by amount of instances?
        self.all.sum {|manager| manager.age / self.all.length}
    end
   

end
