sort_me = [rand(-1000...1000)]

#def bubble_sort(input_array)
#    working_array = Array.new(input_array)
#    counter = 0
#    while counter < working_array.length
#        i = 0
#        while i < working_array.length-1
#            j = i + 1
#            if working_array[i] > working_array[j]
#                temp = working_array[i]
#                working_array[i] = working_array[j]
#                working_array[j] = temp
#            end
#            i += 1
#        end
#        counter += 1
#    end
#    return working_array
#end

def rand_arr(elements)
    puts "enter how many integers you want to sort!"
    while !elements.is_a?(Integer)
        puts "input is not an integer, input integer"
        elements = gets.to_i
    end

    input_array = []
    while i < elements
        input_array << rand(-1000...1000)
        i += 1
    end
    return input_arrayy

end

def bubble_sort_optimerad(input_array)
    curr_arr = arr
    counter = 0
    while counter < curr_arr.length
        i = 0
        while i < curr_arr.length-1
            j = i + 1
            if curr_arr[i] > curr_arr[j]
                temp = curr_arr[i]
                curr_arr[i] = curr_arr[j]
                curr_arr[j] = temp
            end
            i += 1
        end
        counter += 1
    end
    return curr_arr
end

puts "Kontroll, lyckades sorteringen i den optimerade funktionen? Svar: #{bubble_sort_optimerad(sort_me) == sort_me.sort}."

#Tidkontroll, innan optimeringen
timestamp_before = Time.now
bubble_sort(sort_me)
timestamp_after = Time.now
puts "Tid innan optimeringen: #{timestamp_after - timestamp_before} sekunder."

#Tidkontroll, efter optimeringen
timestamp_before = Time.now
bubble_sort_optimerad(sort_me)
timestamp_after = Time.now
puts "Tid efter optimeringen: #{timestamp_after - timestamp_before} sekunder."
