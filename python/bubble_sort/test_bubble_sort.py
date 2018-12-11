import unittest
from bubble_sort import sort

class BinarySearchTest(unittest.TestCase):
    def test_sort(self):
        test_list = [21, 4, 1, 3, 9, 20, 25, 6, 21, 14]
        self.assertItemsEqual(sort(test_list), [1, 3, 4, 6, 9, 14, 20, 21, 21, 25])

if __name__ == '__main__':
    unittest.main()
