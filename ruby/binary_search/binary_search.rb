def binary_search(arr, value)
  min = 0
  max = arr.size
  while min < (max - 1) do
    middle = min + ((max - min) / 2)
    case
    when value == arr[middle]
      return middle
    when value > arr[middle]
      min = middle
    else
      max = middle
    end
  end
  return -1
end
