#2020-01-09, append without <<

def append(arr, num)
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
    if num.is_a?(Integer)
        arr += [num]
        return arr
    else
        "enter a variable as second input"
    end
end
