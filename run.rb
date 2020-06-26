require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here
m1 = Manager.new("Mark", "Laptops", 37)
m2 = Manager.new("John", "Monitors", 35)

e1 = m1.hire_employee("Cat", 50000)
e2 = m1.hire_employee("Dog", 45000)
e3 = m1.hire_employee("Snail", 49500)

e4 = m2.hire_employee("Rat", 51000)
e5 = m2.hire_employee("Bat", 53000)

binding.pry
puts "done"
