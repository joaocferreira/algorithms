import unittest
from binary_search import binary_search

class BinarySearchTest(unittest.TestCase):
    def test_binary_search(self):
        test_list = [1,3,9,11,15,19,29]
        self.assertEqual(binary_search(test_list, 25), -1)
        self.assertEqual(binary_search(test_list, 15), 4)
        self.assertEqual(binary_search(test_list, 30), -1)
        self.assertEqual(binary_search(test_list, 0), -1)

if __name__ == '__main__':
    unittest.main()
