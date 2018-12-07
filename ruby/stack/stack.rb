require_relative '../linked_list/linked_list'

class Stack
  def initialize(head = nil)
    @ll = LinkedList.new(head)
  end

  def push(new_element)
    @ll.insert_first(new_element)
  end

  def pop
    @ll.delete_first
  end
end
