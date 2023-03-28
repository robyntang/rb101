# 02_seeing_stars.rb

def star(odd_number)
    new_array = ["*" * odd_number]

    0.upto(((odd_number - 1) / 2) - 1) do |i|
        new_array << "*" + (" " * i) + "*" + (" " * i) + "*"
        new_array.unshift("*" + (" " * i) + "*" + (" " * i) + "*")
    end

    new_array.each do |line|
        puts line.center(odd_number)
    end
end

star(7)
star(9)














# def print_row(grid_size, distance_from_center)
#     number_of_stars = grid_size - 2 * distance_from_center 
#     stars = ' ' * number_of_stars
#     stars[0] = '*'
#     stars[-1] = '*'
#     puts stars.center(grid_size)
#   end
  
#   def diamond(grid_size)
#     max_distance = (grid_size - 1) / 2
#     max_distance.downto(0) { |distance| print_row(grid_size, distance)}
#     1.upto(max_distance) { |distance| print_row(grid_size, distance)}
#   end
  
#   diamond(9)