#2020-01-09, first element in a array

#def first_element(arr)
#    if arr.is_a?(Array)
#        return arr[0]
#    else
#        puts "input is not an array"
#    end
#end

def first_element(arr)
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
    return arr[0]
end
