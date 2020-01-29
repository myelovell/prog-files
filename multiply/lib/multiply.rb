#2019-11-28, multiply without *

def multiply(num1, num2)
    if num1 < 0
        puts "input positive integer"
        num = gets.to_i
    end
    if num2 < 0
        puts "input positive integer"
        num = gets.to_i
    end
    i = 0
    sum = 0
    while i < num2
        i += 1
        sum += num1
    end
    return sum
end
