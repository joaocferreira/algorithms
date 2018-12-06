class Element(object):
    def __init__(self, value):
        self.value = value
        self.next = None

class LinkedList(object):
    def __init__(self, head=None):
        self.head = head

    def append(self, new_element):
        current = self.head
        if self.head:
            while current.next:
                current = current.next
            current.next = new_element
        else:
            self.head = new_element

    def get_position(self, position):
        current = self.head
        for i in range(position - 1):
            current = current.next
        return current

    def insert(self, new_element, position):
        if position == 1:
            new_element.next = self.head
            self.head = new_element
        else:
            item = self.get_position(position - 1)
            new_element.next = item.next
            item.next = new_element
        pass


    def delete(self, value):
        if self.head.value == value:
            self.head = self.head.next
            return
        current = self.head
        while current.next:
            if current.next.value == value:
                current.next = current.next.next
            else:
                current = current.next
        pass
