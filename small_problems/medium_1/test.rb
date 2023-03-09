
empty = []

5.times { |_| empty << false}

p empty

empty[0] = !empty[0]

p empty

p empty[0].object_id
p empty[2].object_id


