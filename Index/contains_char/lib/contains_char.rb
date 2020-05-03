#2019-12-04, check if str has x in it

def contains_char(str, teck)
    while teck.length > 1
        puts "enter only 1 character"
        teck = gets.chomp
    end

    index = 0
    for index in 0..(str.length - 1)
        if str[index] == teck
            return true
        end
    end
    return false
end
