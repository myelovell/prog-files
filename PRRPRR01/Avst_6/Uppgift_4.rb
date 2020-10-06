#2020-04-29- sort var in array

#array - input array (sorted numbers array)

#Example 1
    #def int_input_array([1,3,4,5])
    # => [1,2,3,4,4,5,6,7]

#checks if input array is sorted, returns ([array] + user input integers) sorted

#Example 2
    #def int_input_array([3,4,1,5])
    # => [1,2,3,4,4,5,6,7]
#checks ig input array is sorted, sorts array, returns ([array] + user input integers) sorted

def int_input_array(array)
    while !array.is_a?(Array)
        puts "input is not an array, input variable"
        puts "write END when done"
        input = gets.chomp
        array = []
        while input != "END"
            array << input
            input = gets.chomp
        end
    end
    puts "If array contains a letter/word it will register as the integer 0"

    sorted_array = array.sort

    if array != sorted_array
        puts "input array is not sorted, shame on you \n i sorted it for you"
    end

    while true
        puts "Input number:\n(Unallowed inputs: letters / 0)\n type q/quit when done."
        user_input = gets.chomp
        if user_input == "q" || user_input == "quit"
            puts sorted_array.sort!
            break
        end
        user_input = user_input.to_i
        while user_input == 0
            puts "Input is not an integer\n Replace with integer"
            user_input = gets.to_i
        end
        user_input = user_input.to_i
        sorted_array << user_input
    end

end
