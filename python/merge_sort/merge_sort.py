def sort(list):
    if len(list) == 1:
        return list
    if len(list) == 2:
        if list[0] < list[1]:
            return list
        else:
            list[0], list[1] = list[1], list[0]
            return list
    mid = len(list) / 2
    sub1 = sort(list[0:mid])
    sub2 = sort(list[mid:len(list)])
    new_list = []

    for i in range(0, len(list)):
        if len(sub1) and len(sub2):
            if sub1[0] < sub2[0]:
                new_list.append(sub1.pop(0))
            else:
                new_list.append(sub2.pop(0))
        elif len(sub1):
            new_list.append(sub1.pop(0))
        elif len(sub2):
            new_list.append(sub2.pop(0))
    return new_list
