#2020-01-31, selection sort

def selection_sort(array)
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
    #In-place It never makes more than O(n) swaps

    for i in 0...array.length #for every element in input array
        for index in (i + 1)...array.length #goes through every element after selected element
            if array[i] > array[index] #checks if previous element is bigger than current element
                temporary = array[i]
                array[i] = array[index]
                array[index] = temporary #switches places
            end
        end
    end
    return array
end
#cleared
