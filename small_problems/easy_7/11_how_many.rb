# 11_how_many.rb

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

# def count_occurrences(array)
#   new_hash = []
#   array.each do |key|
#     new_hash << [key, array.count(key)]
#   end
#   new_hash.to_h.each do |key, value|
#     puts "#{key} => #{value}"
#   end
# end

def count_occurences(array)
  occurences = {}

  array.uniq.each do |element|
    occurences[element] = array.count(element)
  end

  occurences.each do |element, count|
    puts "#{element} => #{count}"
  end
end

end





count_occurrences(vehicles)