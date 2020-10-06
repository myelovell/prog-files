#2020-02-01, bubble sort

def bubble_sort(array)
    #input tests
    while !array.is_a?(Array)
        puts "input is not an array, input variable"
        puts "write END when done"
        input = gets.chomp
        array = []
        while !input.is_a?(Integer) && !input.is_a?(Float)
            puts "this variable is not an integer or float"
            puts "replace with integer/float"
            input = gets.to_f
        end
        while input != "END"
            array << input
            input = gets.chomp
        end
    end

    #Time-complexity: O(n^2)
    #In-place, Can be made stable
    #Takes O(n^2) even when array already sorted
    
    for i in 0...(array.length) #for every element in the input array
        for index in 0...(array.length - 1 - i) #repeatedly goes through every element but with one less step for each loop
            if array[index] > array[index + 1] #compares element and next element, if next < element:
                temporary = array[index]
                array[index] = array[index + 1]
                array[index + 1] = temporary #switches places
            end
        end
    end
    return array
end
#cleared
