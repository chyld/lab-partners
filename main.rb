require 'pry'
require 'rainbow'

students = ['Adi', 'Adrian', 'Alex', 'Anthony', 'Ben', 'Brian', 'Bryan', 'Chloe', 'Eric', 'Jane', 'Jeff', 'Jillian', 'Joe', 'Luke', 'Matt', 'Nick', 'Nicky', 'Ralph', 'Ron', 'Ryan', 'Sandip', 'Sean', 'Shefali', 'Simon', 'Stephen']
students = students.shuffle

puts `clear`
puts "***Lab Partners***".color("#ff3300")
print "Group size? "

group_size = gets.to_i
number_of_groups = students.count / group_size

puts `clear`
number_of_groups.times do |group_number|
  puts  "\n\nGroup #{group_number} : ".color("#ff3300")
  print "#{students.pop(group_size).join(', ')}".color("#33cc00")
end
puts ", #{students.join(', ')}\n\n".color("#33cc00") if students.any?
