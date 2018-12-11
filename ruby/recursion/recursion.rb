def fib(position)
  return position if (position == 0 || position == 1)
  fib(position - 1) + fib(position - 2)
end
