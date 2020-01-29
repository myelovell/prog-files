#2020-01-23

def remove_multiples_of_eleven(array)

    new_array = []
    i = 0
    while array[i] < (array.length)
        if (array[i] % 2) == 0
            new_array << array[i]
        end
    end
    return new_array
end
