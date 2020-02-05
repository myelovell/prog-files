#2020-01-23

def title(str)
    while !str.is_a?(String)
        puts "input is not a string, input string"
        str = gets.str
    end
    
    new_str = ""
    new_str = str[0] + str[str.length - 1]
    return new_str
end
