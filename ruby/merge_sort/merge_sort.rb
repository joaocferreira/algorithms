def sort(a)
  return a if a.size < 2
  if a.size == 2
    return a if a[0] < a[1]
    a[0], a[1] = a[1], a[0]
    return a
  end

  mid = a.size / 2

  sub1 = sort(a[0...mid])
  sub2 = sort(a[mid..a.size])

  b = []

  for i in 0..a.size do
    if sub1[0] && sub2[0]
      if sub2[0] < sub1[0]
        b << sub2.shift
      else
        b << sub1.shift
      end
    elsif sub1[0]
      b << sub1.shift
    elsif sub2[0]
      b << sub2.shift
    end
  end
  b
end
