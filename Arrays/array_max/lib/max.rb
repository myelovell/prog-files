#2020-01-11, biggest number in an array

def max(arr)
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
    sum = 0
    i = 0
    while i < arr.length
        while !arr[i].is_a?(Integer) && !arr[i].is_a?(Float)
            puts "this variable is not an integer or float"
            puts "replace with integer/float"
            arr[i] = gets.to_f
        end
        sum += arr[i]
        i += 1
    end

    biggest = arr[0]
    for num in arr
        if num > biggest
            biggest = num
        end
    end
    return biggest
end
