require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here
m1 = Manager.new("Michael Scott", "Sales", 33)
m2 = Manager.new("David Wallace", "CEO", 43)
m3 = Manager.new("Andy Bernard", "Sales", 40)


e1 = Employee.new("Jim Halpert", 40_000, m1)
e2 = Employee.new("Pam Halpert", 40_500, m1)
e3 = Employee.new("Dwight Schrute", 45_000, m1)


binding.pry
puts "done"
