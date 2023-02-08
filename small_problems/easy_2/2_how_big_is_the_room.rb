# 2_how_big_is_the_room.rb

#Build a program that asks a user for the length and width of a
# room in meters and then displays the area of the room in both 
# square meters and square feet.

puts "Enter the length of the room in meters:"
length = gets.chomp.to_f

puts "Enter the width of the room in meters:"
width = gets.chomp.to_f

area_meters = length * width
area_sq_ft = area_meters * 10.7639

puts "The area of the room is #{area_meters} square meters (#{area_sq_ft} square feet)."