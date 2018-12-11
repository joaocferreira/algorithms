require_relative 'bubble_sort'
require 'test/unit'

class TestBubbleSort < Test::Unit::TestCase
  def test_sort
    test_list = [21, 4, 1, 3, 9, 20, 25, 6, 21, 14]
    assert_equal(test_list.sort, sort(test_list))
  end
end
