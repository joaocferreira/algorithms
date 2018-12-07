import unittest
from stack import *

class StackTest(unittest.TestCase):
    def setUp(self):
        self.e1 = Element(1)
        self.e2 = Element(2)
        self.e3 = Element(3)
        self.e4 = Element(4)
        self.stack = Stack(self.e1)


    def test_stack(self):
        self.stack.push(self.e2)
        self.stack.push(self.e3)
        self.assertEqual(self.stack.pop().value, 3)
        self.assertEqual(self.stack.pop().value, 2)
        self.assertEqual(self.stack.pop().value, 1)
        self.assertIsNone(self.stack.pop())
        self.stack.push(self.e4)
        self.assertEqual(self.stack.pop().value, 4)

if __name__ == '__main__':
    unittest.main()
