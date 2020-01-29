def collatz(n)
    i = 1
    while n != 1
        if (n % 2) == 0
            n = n / 2
        else
            n = n * 3 + 1
        end
        i += 1
    end
    return i
end
