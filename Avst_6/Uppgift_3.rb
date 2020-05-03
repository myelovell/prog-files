#2020-04-23, add str to file name and output file content in terminal

#file - filename in current directory
#str - added string (str) to document (file)

#Example
    #def add_to_file(uppgift_3.rb, "finished")
    # => -Added str:-
    #"finished"

#returns file content plus added section with contents ("-Added str:-" + "#{str}")

def add_to_file(file, str)
    while !str.is_a?(String)
        puts "input is not a string, input string"
        str = gets.chomp
    end

    while File.exist?(file) == false
        puts "Invalid directory/file name \nEnter valid directory/file name:"
        file = gets.chomp
    end
    new_file = File.open(file, "a")
    system("cls")

    new_file.write("\n-Added str:- \n#{str}")
    new_file.close

    output = File.readlines(new_file)
    for element in 0...output.length
        puts output[element].chomp
    end

end
