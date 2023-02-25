#05_name_swapping.rb


def swap_name(name)
  name_array = name.split(' ')
  "#{name_array[1]}, #{name_array[0]}"
end

p swap_name('Joe Roberts') == 'Roberts, Joe'