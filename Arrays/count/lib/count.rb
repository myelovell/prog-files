#2020-01-15, count every occurance of a value in an array

def count(arr, num)
    while !arr.is_a?(Array)
        puts "input is not an array, input variable"
        puts "write END when done"
        input = gets.chomp
        arr = []
        while input != "END"
            arr << input
            input = gets.chomp
        end
    end
    while !num.is_a?(Integer) && !num.is_a?(Float)
        puts "this variable is not an integer or float"
        puts "replace with integer/float"
        num = gets.to_f
    end

    i = 0
    occurance = 0

    while i < arr.length
        if arr[i] == num
            occurance += 1
        end
        i += 1
    end

    if occurance == 0
        return false
    else
        return occurance
    end

end
