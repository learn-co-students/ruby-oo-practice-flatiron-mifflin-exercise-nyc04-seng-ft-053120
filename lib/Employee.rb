class Employee
attr_accessor :name, :salary, :manager_name
@@all=[]
def initialize(name, salary, manager_name)
    @name=name
    @salary=salary
    @manager_name=manager_name
    @@all<<self
end
def self.paid_over(fixnum)
    self.all.select {|employee| employee.salary>fixnum}
end
def self.find_by_department(department)
    answer=nil
    managers=Manager.all.select{|manager|manager.department==department}
    managers.each do |manager|
        Employee.all.each do |employee|
            if manager.name==employee.manager_name
                answer=employee
                break
            end
        end
    end
    answer
end

def tax_bracket
    Employee.all.select {|employee| (employee.salary-self.salary).abs<=1000 if employee!=self}
end
def self.all
    @@all
end
def self.clear
    @@all.clear
end









end
