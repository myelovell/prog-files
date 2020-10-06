#fun calculator yay
def calculator()
    puts "enter either x/y or x+y, x and y has to be integers"
    input = gets.to_str

    division = []
    addition = []
    index = 0
    output = 0

    if input.include?("/") == true
        temporary = input.split("/")
        while index < temporary.length
            division << temporary[index].to_i
            index += 1
        end
        temporary = ""
        index = 0
        rest = division[0] % division[1]
        whole = division[0] / division[1]
        puts "[#{whole}, #{rest}]"
    else
        temporary = input.split("+")
        while index < temporary.length
            output += temporary[index].to_i
            index += 1
        end
        puts output
    end

    puts "if you want to exit enter q, else enter r"
    exit_input = gets.chomp
    if exit_input == "q"
        while exit_input == "q"
            break
        end

    elsif exit_input == "r"
        system("cls")
        calculator()
    else
        puts "entered invalid exit input, system exit"
    end
end
calculator()
