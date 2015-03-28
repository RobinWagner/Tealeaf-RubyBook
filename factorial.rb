# Factorial 

def factorial(n)
  t = n
  if n == 0
    1
  elsif n < 0
    0
  else
    while n > 1
      t = n * (n - 1)
      n = n - 1
    end
  t
  end
end

puts factorial(5)
puts factorial(6)
puts factorial(7)
puts factorial(8)
