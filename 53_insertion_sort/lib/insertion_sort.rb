#2020-02-01, insertion sort

def insertion_sort(array)
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

#    for i in range len(L):
#    for j in range (0,i)
#    if (L[i]<L[j]):  explain
#    temp=L[i]
#    L[i]=L[j]
#    L[j]=temp

    sorted_array = []

    for index1 in 0...(array.length - 1) #for every element in the input array

        #collect the smallest num, delete it from the array, input in output array
        #while index1 < array.length
        #    if array[index1] > array[index1 + 1]
        #        temporary = array[index2]
        #        array[index2] = array[index2 - 1]
        #        array[index1 - 1] = temporary
        #    else
        #        sorted_array << array[index2]
        #    end
        #    index2 -= 1
        #end
    end
    return sorted_array
end
#output in new array
