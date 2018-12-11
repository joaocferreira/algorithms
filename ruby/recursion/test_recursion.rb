require_relative 'recursion'
require 'test/unit'

class TestRecursion < Test::Unit::TestCase
  def test_fib
    assert_equal(fib(0), 0)
    assert_equal(fib(1), 1)
    assert_equal(fib(2), 1)
    assert_equal(fib(3), 2)
    assert_equal(fib(4), 3)
    assert_equal(fib(5), 5)
    assert_equal(fib(6), 8)
    assert_equal(fib(7), 13)
    assert_equal(fib(8), 21)
    assert_equal(fib(9), 34)
    assert_equal(fib(10), 55)
    assert_equal(fib(11), 89)
  end
end
