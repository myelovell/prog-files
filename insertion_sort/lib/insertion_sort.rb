#2020-02-01, insertion sort

def insertion_sort(array)
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

    #Time Complexity: O(n^2)
    #In-place, stable

    for i in 0...(array.length) #for every element in the input array
        for index in 0...(array.length) #goes through every element and:
            if array[i] < array[index] #checks if element is in the right place (not smaller than the element before)
                temporary = array[i]
                array[i] = array[index]
                array[index] = temporary #places ge element in the correct place
            end
        end
    end
    return array
end
#cleared
