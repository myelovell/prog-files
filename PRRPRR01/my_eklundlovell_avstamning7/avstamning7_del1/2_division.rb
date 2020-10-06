#returns rest and divived kvot int

def division(str)
    while !str.is_a?(String)
        puts "Input is not a string, input string"
        str = gets.to_str
    end
    numbers = str.split("/")

    index = 0
    integers = []
    while index < numbers.length
        integers << numbers[index].to_i
        index += 1
    end

    rest = integers[0] % integers[1]
    begin
        whole = integers[0] / integers[1]
    rescue ZeroDivisionError => e
        puts "Error message: #{e}\n input new number"
        integers[1] = gets.chomp.to_i
        retry
    end
    output = [whole, rest]
    puts "[#{output[0]}, #{output[1]}]"
end
