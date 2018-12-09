require_relative 'binary_search'
require 'test/unit'

class TestBinarySearch < Test::Unit::TestCase
  def test_binary_search
    test_list = [1,3,9,11,15,19,29]
    assert_equal(-1, binary_search(test_list, 25))
    assert_equal(4, binary_search(test_list, 15))
    assert_equal(-1, binary_search(test_list, 30))
    assert_equal(-1, binary_search(test_list, 0))
    assert_equal(1, binary_search(test_list, 3))
  end
end
