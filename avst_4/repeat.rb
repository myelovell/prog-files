#2020-01-23

def repeat(element, heltal)
    while !heltal.is_a?(Integer)
        puts "input is not an integer, input integer"
        heltal = gets.to_i
    end

    array = []
    i = 0
    while i < heltal
        array << element
        i += 1
    end
    return array
end
