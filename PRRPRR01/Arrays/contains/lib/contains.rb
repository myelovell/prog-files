#2020-01-15, if a num in array = true else false

def contains(arr, num)
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

    while i < arr.length
        if arr[i] == num
            return true
        end
        i += 1
    end
    return false
end
