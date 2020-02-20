#2020-02-01, bubble sort

def bubble_sort(array)
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
#    for j in range (0,len(L)-1):
#    if (L[j]>L[j+1]):  explain
#    temp=L[j]
#    L[j]=L[j+1]
#    L[j+1]=temp

    for i in 0...(array.length) #for every element in the input array
        for index in 0...(array.length - 1 - i)

            if array[index] > array[index + 1]
                temporary = array[index]
                array[index] = array[index + 1]
                array[index + 1] = temporary
            end
        end
    end
    return array
end
#cleared
