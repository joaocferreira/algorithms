class Element
  attr_accessor :value, :next

  def initialize(value)
    @value = value
    @next = nil
  end
end

class LinkedList
  attr_reader :head
  def initialize(head = nil)
    @head = head
  end

  def append(new_element)
    current = head
    if head
      while current.next do
        current = current.next
      end
      current.next = new_element
    else
      @head = new_element
    end
    self
  end

  def get_position(position)
    current = head
    for i in (1...position) do
      current = current.next
    end
    current
  end

  def insert(new_element, position)
    if position == 1
      new_element.next = head
      @head = new_element
    else
      previous = get_position(position - 1)
      new_element.next = previous.next
      previous.next = new_element
    end
  end

  def delete(value)
    if head.value == value
      @head = head.next
    else
      current = head
      while current.next do
        if current.next.value == value
          return current.next = current.next.next
        else
          current = current.next
        end
      end
    end
  end

  def insert_first(new_element)
    insert(new_element, 1)
  end

  def delete_first
    target = get_position(1)
    delete(target.value) if target
    target
  end
end
