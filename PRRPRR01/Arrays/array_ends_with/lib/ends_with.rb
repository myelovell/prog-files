#2019-12-04, if both last index == return true

def ends_with(str, teck)
    while teck.length > 1
        puts "enter only 1 character"
        teck = gets.chomp
    end

    if str[str.length - 1] == teck
        return true
    else
        return false
    end
end
