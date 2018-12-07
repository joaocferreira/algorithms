require_relative 'queue'
require 'test/unit'

class TestLinkedList < Test::Unit::TestCase
  def setup
    @q = Queue.new(1)
    @q.enqueue(2)
    @q.enqueue(3)
  end

  def test_queue
    assert_equal(@q.peek, 1)
    assert_equal(@q.dequeue, 1)
    @q.enqueue(4)
    assert_equal(@q.dequeue, 2)
    assert_equal(@q.dequeue, 3)
    assert_equal(@q.dequeue, 4)
    @q.enqueue(5)
    assert_equal(@q.peek, 5)
  end
end
