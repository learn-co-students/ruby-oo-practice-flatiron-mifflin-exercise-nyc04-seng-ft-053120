require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here

e1 = Employee.new('Vincent', 8993.04, 'Margaret')
e2 = Employee.new('Chaney', 5841.33, 'Margaret')
e3 = Employee.new('Julian', 5781.48, 'Hiroko')
e4 = Employee.new('Ray', 8136.55, 'MaAlthea')
e5 = Employee.new('Joel', 7941.38, 'Nichole')
e6 = Employee.new('Joel', 7941.38, 'Micro1')


m1 = Manager.new('Margaret', 'dept1', 31)
m2 = Manager.new('Hanae', 'dept2', 32)
m3 = Manager.new('Hiroko', 'dept3', 33)
m4 = Manager.new('MaAlthea', 'dept4', 34)
m5 = Manager.new('Nichole', 'dept5', 35)
m6 = Manager.new('Micro1', 'dept6', 35)
m7 = Manager.new('Micro2', 'dept6', 35)

binding.pry
puts "done"
