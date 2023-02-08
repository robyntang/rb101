# 5_greeting_a_user.rb

# Write a program that will ask for user's name. The program will then greet the user.
# If the user writes "name!" then the computer yells back to the user.

print "What is your name? "
name = gets.chomp

if name.[-1] == '!'
  name = name.chop
  puts ("Hello #{name}. Why are we screaming?").upcase
else
  puts "Hello #{name}"
end

