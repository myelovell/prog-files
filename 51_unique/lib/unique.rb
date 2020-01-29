#2929-01-16, delete all doubles

def unique(arr)
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

    index1 = 0
    index2 = 0
    instances = 0
    double = []


    while index1 < arr.length

        while index2 <= double.length
            if double[index2] == arr[index1]
                instances += 1
            end
            index2 += 1
        end

        if instances < 1
            double << arr[index1]
            instances = 0
        end

        instances = 0
        index2 = 0
        index1 += 1
    end

    return double
end
