def count_even(input)
    sum = 1
    i = 0
    while i < input
        i += 1
        if (i % 2) == 0
        sum += 1
        end
    end
    return sum
end