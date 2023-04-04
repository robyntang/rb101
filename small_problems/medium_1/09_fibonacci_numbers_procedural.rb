# 09_fibonacci_numbers_procedural.rb


# def fibonacci(n)
#   return 1 if n <= 2

#   sequence = [1, 1]

#   until sequence.length == n
#   sequence << sequence[-1] + sequence[-2]
#   end

#   sequence[-1]
# end

def fibonacci(nth)
  first, last = [1, 1]
  3.upto(nth) do 
    first, last = [last, first + last]
  end

  last
end



p fibonacci(20) == 6765
p fibonacci(100) == 354224848179261915075
fibonacci(100_001) # => 4202692702.....8285979669707537501