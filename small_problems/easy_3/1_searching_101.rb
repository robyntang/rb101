# 1_searching_101.rb

def prompt(number)
  puts "Enter the #{number} number: "
  gets.chomp.to_i
end

new_array = [prompt("1st"), prompt("2nd"), prompt("3rd"), prompt("4th"), prompt("5th")]
last_prompt = prompt("last")

yes_includes = "The number #{last_prompt} appears in #{new_array}"
does_not_include = "The number #{last_prompt} does not appear in #{new_array}."
new_array.include?(last_prompt) ? (puts yes_includes) : (puts does_not_include)