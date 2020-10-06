#2020-01-23

def remove_multiples_of_eleven(array)
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

    new_array = []
    i = 0

    while i < (array.length)
        if (array[i] % 11) == 0
            new_array << array[i]
        end
        i += 1
    end
    return new_array
end
