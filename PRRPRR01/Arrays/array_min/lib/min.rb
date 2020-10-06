#2020-01-10, smallest number in an array

def min(arr)
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
            int = gets.chomp
            arr[i] = gets.to_f
        end
        sum += arr[i]
        i += 1
    end

    smallest = arr[0]
    for num in arr
        if num < smallest
            smallest = num
        end
    end
    return smallest
end
