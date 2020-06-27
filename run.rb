require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here
m1 = Manager.new("Michael Scott", "Scranton Branch", 45)
m2 = Manager.new("Angela", "Accounting", 35)

m1.hire_employee("Jim", 50000)

e2 = Employee.new("Oscar", 51000, m2)
e3 = Employee.new("Kelly", 52000, m2)

binding.pry
puts "done"
