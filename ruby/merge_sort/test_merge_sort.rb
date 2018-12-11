require_relative 'merge_sort'
require 'test/unit'

class TestMergeSort < Test::Unit::TestCase
  def test_sort
    test_list = [21, 4, 1, 3, 9, 20, 25]
    assert_equal(test_list.sort, sort(test_list))
  end
end
