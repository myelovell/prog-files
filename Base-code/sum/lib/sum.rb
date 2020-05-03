#2020-01-10, returns the sum of every integer in a array

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
    return sum
end
