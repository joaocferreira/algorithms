def sort(list)
  counter = list.size - 1
  while counter !=0 do
    for i in 1..counter  do
      if list[i - 1] > list[i]
        list[i], list[i - 1] = list[i - 1], list[i]
      end
    end
    counter -= 1
  end
  list
end
