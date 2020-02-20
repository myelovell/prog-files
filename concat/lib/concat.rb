#2020-01-10, oop its midnight, concatenate 2 arrays

def concat(arr1, arr2)
    while !arr1.is_a?(Array)
        puts "input 1 is not an array, input variable"
        puts "write END when done"
        input = gets.chomp
        arr1 = []
        while input != "END"
            arr1 << input
            input = gets.chomp
        end
    end
    while !arr2.is_a?(Array)
        puts "input 2 is not an array, input variable"
        puts "write END when done"
        input = gets.chomp
        arr2 = []
        while input != "END"
            arr2 << input
            input = gets.chomp
        end
    end
    new_array = []
    new_array << arr1
    new_array << arr2
    return new_array
end
