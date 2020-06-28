require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here

# name, department, age

m1 = Manager.new("Paul", "music", 29)
m2 = Manager.new("Sally", "records", 44)
m3 = Manager.new("David", "accounting", 34)

# name, salary, manager_name

e1 = Employee.new("al", 25000, m2)
e2 = Employee.new("deirdre", 40000, m2)
e3 = Employee.new("sue", 26000, m3)

binding.pry
puts "done"
