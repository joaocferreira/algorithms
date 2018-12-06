import unittest
from linked_list import *

class LinkedListTest(unittest.TestCase):
    def setUp(self):
        self.e1 = Element(1)
        self.e2 = Element(2)
        self.e3 = Element(3)
        self.e4 = Element(4)

        self.ll = LinkedList(self.e1)
        self.ll.append(self.e2)
        self.ll.append(self.e3)

    def test_get_position(self):
        self.assertEqual(self.ll.head.next.next.value, 3)
        self.assertEqual(self.ll.get_position(1).value, 1)
        self.assertEqual(self.ll.get_position(2).value, 2)
        self.assertEqual(self.ll.get_position(3).value, 3)

    def test_insert(self):
        self.ll.insert(self.e4,3)
        self.assertEqual(self.ll.get_position(3).value, 4)
        self.ll.insert(self.e4,1)
        self.assertEqual(self.ll.get_position(1).value, 4)

    def test_delete(self):
        self.ll.insert(self.e4,3)
        self.ll.delete(1)
        self.assertEqual(self.ll.get_position(1).value, 2)
        self.assertEqual(self.ll.get_position(2).value, 4)
        self.assertEqual(self.ll.get_position(3).value, 3)

if __name__ == '__main__':
    unittest.main()
