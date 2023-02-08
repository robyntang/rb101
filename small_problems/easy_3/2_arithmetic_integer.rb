# 2_arithmetic_integer.rb

def prompt(number)
  puts "Enter the #{number} number: "
  gets.chomp.to_i
end

first_number = prompt("first")
second_number = prompt("second")

operations = [:+, :-, :*, :/, :%, :**]

operations.each do |operation|
  puts "#{first_number} #{operation} #{second_number} = #{[first_number,second_number].inject(operation)}"
end