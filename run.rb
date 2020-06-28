require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


e1=Employee.new("maria",100000,"alby")
e2=Employee.new("jim",50000,"joe")
e3=Employee.new("jef",50999,"luke")

m1=Manager.new("alby","hgs",43)
m2=Manager.new("joe","ps133",8)
m3=Manager.new("luke","home",2)



binding.pry
puts "done"
