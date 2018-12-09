class Queue(object):
    def __init__(self, head=None):
        if head:
            self.ll = [head]
        else:
            self.ll = []

    def enqueue(self, new_element):
        self.ll.append(new_element)

    def peek(self):
        return self.ll[0]

    def dequeue(self):
        return self.ll.pop(0)
