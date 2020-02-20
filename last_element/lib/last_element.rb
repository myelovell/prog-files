#2020-01-09, last element in an array

def last_element(arr)
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
    return arr[arr.length - 1]
end
