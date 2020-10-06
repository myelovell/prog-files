#2020-09-23, check if prime
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

    # for i in 2...num / 2
    #     if num % i == 0
    #         return false
    #     end
    # end
    return true
end



i = 0

max_test = [7, 13, 55, 1000403, 10000000069, 10202102321]
while i < max_test.length
    start = Time.now
    is_prime(max_test[i])
    slut = Time.now
    tot_tid = slut-start
    puts "totaltid för i=#{max_test[i]} var tiden: #{tot_tid}"
    i += 1

end


#6 min
