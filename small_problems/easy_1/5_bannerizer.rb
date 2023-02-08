# Write a method that will take a short line of text, and print it within a box.

def print_in_box(characters)
    dash = '-' * characters.length
    space = ' ' * characters.length
    a = "+-" + dash + '-+'
    b = "| " + space + ' |'
    c = "| " + characters + ' |'
    puts [a, b, c, b, a]
end


print_in_box('To boldly go where no one has gone before.')
print_in_box('Robyn')
print_in_box('I like pie')
print_in_box('')
