require_relative 'stack'
require 'test/unit'

class TestLinkedList < Test::Unit::TestCase
  def setup
    @e1 = Element.new(1)
    @e2 = Element.new(2)
    @e3 = Element.new(3)
    @e4 = Element.new(4)
    @stack = Stack.new(@e1)
  end

  def test_stack
    @stack.push(@e2)
    @stack.push(@e3)
    assert_equal(@stack.pop.value, 3)
    assert_equal(@stack.pop.value, 2)
    assert_equal(@stack.pop.value, 1)
    assert_nil(@stack.pop)
    @stack.push(@e4)
    assert_equal(@stack.pop.value, 4)
  end
end
