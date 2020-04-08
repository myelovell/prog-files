#2020-01-09, true if array is empty else false

def is_empty(arr)
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
        if arr.length == 0
            return true
        else
            return false
        end
end
