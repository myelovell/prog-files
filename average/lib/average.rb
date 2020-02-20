#2020-01-10, average of inputs

def sum(arr)
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
        while arr[i].is_a?(Integer) == false
            puts "this variable is not an integer"
            puts "replace with integer"
            arr[i] = gets.to_i
        end
        sum += arr[i]
        i += 1
    end
    average = 0.0
    sum = sum.to_f
    i = i.to_f
    if (average % 2) == 0
        average = sum / i
        return average
    else
        average = sum / i
        return average
    end
end
