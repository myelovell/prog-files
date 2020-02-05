#2020-01-23
#EJ TESTAD

def sirap_i_paris(str)
    while !str.is_a?(String)
        puts "input is not a string, input string"
        str = gets.str
    end

    str_backwards = ""
    i = (str.length - 1)
    while i >= 0
        str_backwards += str[i]
        i -= 1
    end

    if str_backwards == str
        return true
    else
        return false
    end
end
