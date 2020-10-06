#addition of 2 integers

#Elements:
#    output = integer with addition of the two integers presented in input argument
#    index = current element in array of integers presented in input argument
#    numbers = array with integers presented in input argument

#Example outputs:
#    addition("5+3") => 8
#    addition("237+100") => 337
def addition(str)
    output = 0
    index = 0
    numbers = str.split("+")

    while index < numbers.length
        output += numbers[index].to_i
        index += 1
    end
    puts output
end
