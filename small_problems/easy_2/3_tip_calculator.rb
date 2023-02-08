# 3_tip_calculator.rb

#Create a simple tip calculator.
# The program should prompt for a bill amount and a tip rate.
# The program must compute the tip
# and then display both the tip and the total amount of the bill.

print "What is the bill? "
bill = gets.to_f

print "What's the tip percentage? "
tip_percentage = gets.to_f

tip = ((tip_percentage * bill) * (0.01)).round(2)
total = (tip + bill).round(2)

puts "The tip is $#{tip}"
puts "The total is $#{total}"