#2019-11-22, smallest of three

def smallest_of_three(num1, num2, num3)
    while num1 == num2
        puts "num1 and num2 are the same, enter new num2"
        num2 = gets.to_i
    end

    while num1 == num3
        puts "num1 and num3 are the same, enter new num3"
        num3 = gets.to_i
    end

    if num1 < num2
        if num1 < num3
            return num1
        else
            return num3
        end
    else
        if num2 < num3
            return num2
        else
            return num3
        end
    end
end
