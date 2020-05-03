#2019-12-04, both index 0 == true

def starts_with(str, teck)
    while teck.length > 1
        puts "enter only 1 character"
        teck = gets.chomp
    end

    if str[0] == teck
        return true
    else
        return false
    end
end
