#2020-03-05, binary search

def binary_search (array,var)  # a is the array and key is the value to be found
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

    index1 = 0
    index2= array.length-1

    for x in 0...index2
        mid = index1 + ((index2-index1)/2)
        if array[mid] == var
            return mid
        elsif array[mid] < var
            index1=mid+1
        else
            index2=mid-1
        end
    end
    return false
end
