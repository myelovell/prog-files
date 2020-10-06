def sum_even(input)
    sum = 0
    i = 0
    while i < input
        i += 1
        if (i % 2) == 0
        sum = sum + i
        end
    end
    return sum
end