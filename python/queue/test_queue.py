import unittest
from queue import *

class QueueTest(unittest.TestCase):
    def setUp(self):
        self.q = Queue(1)
        self.q.enqueue(2)
        self.q.enqueue(3)

    def test_queue(self):
        self.assertEqual(self.q.peek(), 1)
        self.assertEqual(self.q.dequeue(), 1)
        self.q.enqueue(4)
        self.assertEqual(self.q.dequeue(), 2)
        self.assertEqual(self.q.dequeue(), 3)
        self.assertEqual(self.q.dequeue(), 4)
        self.q.enqueue(5)
        self.assertEqual(self.q.peek(), 5)

if __name__ == '__main__':
    unittest.main()
