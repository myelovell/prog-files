#2020-01-10, concatenate array and value, value in the beginning

def prepend(arr, num)
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
    while num.is_a?(Float) == false
        puts "this variable is not an integer or float"
        puts "replace with integer/float"
        num = gets.to_f
    end
    new_array = []
    new_array << num
    new_array << arr
    return new_array
end
