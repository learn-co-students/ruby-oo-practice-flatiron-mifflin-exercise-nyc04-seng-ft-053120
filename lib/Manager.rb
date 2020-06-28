class Manager

attr_accessor :name, :department, :age

@@all=[]

def initialize(name, department, age)
    @name=name
    @department=department
    @age=age
    @@all<<self
end

def employees
   Employee.all.select {|employee| employee.manager_name==self.name} 
end

def hire_employee(name,salary)
    hire_employee=Employee.new(name,salary,self.name)
end

def self.all_departments
    self.all.map {|manager| manager.department}
end

def self.average_age
    age=self.all.map {|manager| manager.age.to_f}
    age.reduce(0){|sum,num|sum + num}/age.length
end

def self.all
    @@all
end
def self.clear
    @@all.clear
end











end
