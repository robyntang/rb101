#10_mutation.rb

p array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)

# => ["Moe", "Larry", "Curly", "Shemp", "Harpo", "Chico", "Groucho", "Zeppo"]

p array2 = []

# => []

p array1.each { |value| array2 << value }

# => ["Moe", "Larry", "Curly", "Shemp", "Harpo", "Chico", "Groucho", "Zeppo"]

p array1.each { |value| value.upcase! if value.start_with?('C', 'S') }

# => ["Moe", "Larry", "CURLY", "SHEMP", "Harpo", "CHICO", "Groucho", "Zeppo"]

puts array2

# => Moe
# => Larry
# => CURLY
# => SHEMP
# => Harpo
# => CHICO
# => Groucho
# => Zeppo