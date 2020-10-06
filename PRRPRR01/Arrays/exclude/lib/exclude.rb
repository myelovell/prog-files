#2020-01-16, exclude value if in array

def exclude(arr, value)
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

    while i < arr.length
        if arr[i] != value
            new_array << arr[i]
        end
        i += 1
    end
    return new_array
end

#"def".to_sym
#:def
