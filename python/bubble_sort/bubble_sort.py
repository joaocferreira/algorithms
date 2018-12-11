def sort(list):
  counter = len(list) - 1
  while counter !=0:
    for i in range(1, counter):
      if list[i - 1] > list[i]:
        list[i], list[i - 1] = list[i - 1], list[i]
    counter -= 1
  return list
