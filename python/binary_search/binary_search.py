def binary_search(input_array, value):
    max = len(input_array)
    min = 0
    while min < (max - 1):
        middle = min + ((max - min) / 2)
        if input_array[middle] == value:
            return middle
        elif value > input_array[middle]:
            min = middle
        elif value < input_array[middle]:
            max = middle
    return -1
