#2020-09-23, check for primes
def is_prime(num)
    if num == 2
        return true
    end
    if num%2 == 0
        return false
    end
    i = 3
    while i <= (num**0.5)+1
        if num % i == 0
            return false
        end
        i += 2
    end
    return true
end

def primenumbers_to(num)
    prime_arr = [2]
    for i in 2...num - 1
        if is_prime(i)
            prime_arr << i
        end
    end
    return prime_arr
end


p primenumbers_to(103)
