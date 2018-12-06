require_relative 'linked_list'
require 'test/unit'

class TestLinkedList < Test::Unit::TestCase
  def setup
    e1 = Element.new(1)
    e2 = Element.new(2)
    e3 = Element.new(3)
    @e4 = Element.new(4)

    @ll = LinkedList.new(e1)
    @ll.append(e2)
    @ll.append(e3)
  end

  def test_get_position
    assert_equal(3, @ll.head.next.next.value)
    assert_equal(3, @ll.get_position(3).value)
  end

  def test_insert
    @ll.insert(@e4,3)
    assert_equal(4, @ll.get_position(3).value)
    assert_equal(1, @ll.get_position(1).value)
    @ll.insert(@e4,1)
    assert_equal(4, @ll.get_position(1).value)
  end

  def test_delete
    @ll.insert(@e4,3)
    @ll.delete(1)
    assert_equal(2, @ll.get_position(1).value)
    assert_equal(4, @ll.get_position(2).value)
    assert_equal(3, @ll.get_position(3).value)
    @ll.delete(4)
    assert_equal(3, @ll.get_position(2).value)
  end
end
