#2020-04-22, highest and lowest

puts "We will output the highest and lowest number you input! \n(Unallowed inputs: letters / 0)"
array = []
#input tests etc
while true
    puts "Input number:"
    user_input = gets.chomp
    if user_input == "q"
        puts "Highest number: #{array[array.length - 1]} \nLowest number: #{array[0]}"
        break
    end
    while user_input == 0
        puts "Input is not an integer \nReplace with integer"
        user_input = gets.to_i
    end
    user_input = user_input.to_i
    array << user_input

    #sort array
    for i in 0...(array.length)
        for index in 0...(array.length - 1 - i)
            if array[index] > array[index + 1]
                temporary = array[index]
                array[index] = array[index + 1]
                array[index + 1] = temporary
            end
        end
    end
    puts "Current highest number: #{array[array.length - 1]} \nCurrent lowest number: #{array[0]}"
    system(cls)
end
