#2020-03-05, linear search

def linear_search(array, var)
    while !array.is_a?(Array)
        puts "input is not an array, input variable"
        puts "write END when done"
        input = gets.chomp
        array = []
        while input != "END"
            array << input
            input = gets.chomp
        end
    end

    for x in 0...(array.length - 1)
        if array[x] == var
            return true
        end
    end
    return false
end
