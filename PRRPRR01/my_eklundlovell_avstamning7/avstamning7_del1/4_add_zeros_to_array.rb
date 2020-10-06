#base code
#def add_zeros_to_array(input_array, number_of_zeros)
#    i = 0
#    while i >= input_array.length
#        i + 1
#        input_array
#    end
#    return
#end

#structuring the code so i can understand the variables easier
#def add_zeros_to_array(array, zeros)
#    index = 0
#    while index >= array.length #irrelevant since we do not need to know how many elements the input array has.
#        # >= means index has to be higher than the amounts of elements in the array, since it is 0 the loop wont do anything
#        index += 1 #itteration but changed + to += so it adds onto index's value
#        array #????
#    end
#    return
#end

#making the code work
#def add_zeros_to_array(array, zeros)
#    index = 0
#    while index < zeros #index starts at 0, when it is 0 the ammount of added zeros are 0
#        #when index is the same as zeros it will quit, having added 0 from index 0..zeros
#        index += 1
#        array << 0 #inputs new element 0 into array
#    end
#    return array #returns the complete array
#end

#validation
#def add_zeros_to_array(array, zeros)
#    while !array.is_a?(Array)#array input validation, lets user re enter variable
#        puts "input is not an array, input integer, enter q when done"
#        num = gets.chomp
#        if num == "q"
#            break
#        end
#        num = num.to_i
#        array = []
#        array << num
#    end
#
#    while !zeros.is_a?(Integer) #zero integer input validation, lets the user re enter variable
#        puts "the amount of zeros is not a positive integer\n enter positive integer"
#        zeros = gets.to_i
#    end
#
#    index = 0
#    while index < zeros
#        index += 1
#        array << 0
#    end
#    return array
#end
#
#running the code to check for errors
#add_zeros_to_array([4,5,6,7], "55")

#fixing output since i cannot validate the code without knowing the output of the program
def add_zeros_to_array(array, zeros)
    while !array.is_a?(Array)
        puts "input is not an array, input integer, enter q when done"
        num = gets.chomp
        if num == "q"
            break
        end
        num = num.to_i
        array = []
        array << num
    end

    while !zeros.is_a?(Integer)
        puts "the amount of zeros is not a positive integer\n enter positive integer"
        zeros = gets.to_i
    end

    index = 0
    while index < zeros
        index += 1
        array << 0
    end
    puts array
end

add_zeros_to_array([4,5,6,7], "55")
#THE CODE IS WORKING 
