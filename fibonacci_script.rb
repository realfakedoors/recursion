#a method which takes a number and returns that many members of the fibonacci sequence, using iteration:

def fibs(n)
  current_int = 0
  next_int = 1
  fib_array = []
  n.times do
    fib_array << current_int
    current_int, next_int = next_int, (current_int + next_int)
  end
  fib_array
end

#another method that solves the same problem recursively:

def fibs_rec(n, fib_array=[0,1])
  return [0] if n == 1
  return fib_array if fib_array.length == n
  fib_array << fib_array[-1] + fib_array[-2]
  fibs_rec(n, fib_array)
end