#1
def title(str)
    new_str = ""
    new_str = str[0] + str1[str.length - 1]
    return new_str
end

#2
def repeat(element, heltal)
    array = []
    i = 0
    while array[i] < heltal
        array << element
        i += 1
    end
end

#3
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

#4
def sirap_i_paris(str)

    str_backwards = ""
    i = 0
    a = (str.length - 1)
    while i < str.length
        str_backwards += a
        a -= 1
    end

    if str_backwards == atr
        return true
    else
        return false
    end
end

#5
