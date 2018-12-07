class Queue
  def initialize(head = nil)
    @list =[head].compact
  end

  def enqueue(new_element)
    @list << new_element
  end

  def peek
    @list[0]
  end

  def dequeue
    @list.shift
  end

end
