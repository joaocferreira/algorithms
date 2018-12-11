import unittest
from merge_sort import sort

class MergeSortTest(unittest.TestCase):
    def test_sort(self):
        test_list = [21, 4, 1, 3, 9, 20, 25]
        self.assertItemsEqual(sort(test_list), [1, 3, 4, 9, 20, 21, 25])

if __name__ == '__main__':
    unittest.main()
