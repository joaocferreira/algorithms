def fib(position):
    if position == 0 or position == 1:
        return position
    return fib(position - 1) + fib(position - 2)
