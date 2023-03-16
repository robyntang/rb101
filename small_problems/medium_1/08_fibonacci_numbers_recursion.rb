# 08_fibonacci_numbers_recursion.rb

def sum(n)
  return 1 if n == 1
  n + sum(n - 1)
end

def fibonacci(n)
  return 1 if n <= 2
  fibonacci(n - 1) + fibonacci(n - 2)
end