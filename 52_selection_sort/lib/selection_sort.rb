#2020-01-31, selection sort

def selection_sort(array)
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
#    for j in range (i+1,len(L))
#    if (L[i]>L[j]):
#    temp=L[i]
#    L[i]=L[j]
#    L[j]=temp  

    index1 = 0
    index2 = 0

    for index1 in 0...array.length
        minimum = index1
        for index2 in (index1 + 1)...array.length
            if array[index2] < array[minimum]
                temporary = array[index2]
                array[index2] = array[minimum]
                array[minimum] = temporary
            end
        end
    end
    return array
end
#reverse bubble sort and output in new array
