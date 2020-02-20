    #2020-02-15, .split

def split_char(str, tecken)
    while !str.is_a?(String)
        puts "input is not a string, input string"
        str = gets.chomp
    end

i = 0
new_array = []
temporary = ""

    while i < str.length
        if str[i] != tecken
            temporary += str[i]
        else
            new_array << temporary
            temporary = ""
        end
        i += 1
    end
    return new_array
end
