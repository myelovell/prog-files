#2019-12-04, returns length without .length, .size, .count

def length(str)
    i = 0
    while str[i] != nil
        i += 1
    end
    return i
end
