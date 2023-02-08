# 4_when_will_i_retire.rb

require 'date'

current_year = Date.today.year.to_i

print "What is your age? "
age = gets.chomp.to_i

print "At what age would you like to retire? "
retirement_age = gets.chomp.to_i 

work_years_to_go = retirement_age - age
retirement_year = (work_years_to_go + current_year)

puts "It's #{current_year}. You will retire in #{retirement_year}."
puts "You only have #{work_years_to_go} years of work to go!"

