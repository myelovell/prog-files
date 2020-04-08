#2020-02-25, quick sort

def quick_sort(array, left, right)
    #input tests
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
    while !left.is_a?(Integer)
        puts "input is not an integer, input integer"
        left = gets.to_i
    end
    while !right.is_a?(Integer)
        puts "input is not an integer, input integer"
        right = gets.to_i
    end


    if left < right
        index = partition(array, left, right)
        quick_sort(aray, left, (index - 1))
        quick_sort(array, (index + 1), right)
    end

    return array
end

def partition(array, left, right)
    #input tests
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
    while !left.is_a?(Integer)
        puts "input is not an integer, input integer"
        left = gets.to_i
    end
    while !right.is_a?(Integer)
        puts "input is not an integer, input integer"
        right = gets.to_i
    end


    pivot = array[right]
    pivot_index = left

    for index in left...(right - 1)
        if array[index] < pivot_index
            temporary = array[index]
            array[index] = array[pivot_index]
            array[pivot_index] = temporary
        end
    end

    temporary = array[pivot_index]
    array[pivot_index] = pivot
    array[right] = temporary

    return pivot_index
end
