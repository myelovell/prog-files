#2019-11-28, fakulteten

def factorial(num)
    if num < 0
        puts "input positive integer"
        num = gets.to_i
    end
    i = 0
    sum = 1
    while i < num
        i += 1
        sum = sum * i
    end
    return sum
end
