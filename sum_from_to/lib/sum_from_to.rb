#2019-11-22, sum of all integers from i1 to i2

def sum_from_to(i1, i2)
    sum = i1
    if i2 < i1
        while i2 < i1
            i1 -= 1
            sum += i1
        end
    else
        while i1 < i2
            i1 += 1
            sum += i1
        end
    end
    return sum
end
