require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here
# name,department,age
m1 = Manager.new("Michael","Sales", 40)
m2 = Manager.new("Dwight", "WareHouse", 35)
m3 = Manager.new("Jan", "Sales", 28)
# attr_reader :name, :salary, :manager
e1 = Employee.new("Pam", 50_001, m1)
e2 = Employee.new("Erin", 49_000, m1)
e3 = Employee.new("Daryl", 50_000, m2)


binding.pry
puts "done"
