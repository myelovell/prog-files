#2020-04-02, Filsystemsuppgifter

#1. ls(), sort path into files and folders
def ls()
    all_data = Dir.glob("*")
    files = []
    folders = []
    i = 0
    while i < all_data.length
        if File.file?(all_data[i])
            files << all_data[i]
        else
            folders << all_data[i]
        end
        i += 1
    end
    return "all files: #{files}\n all folders: #{folders}"
end

#2.  rem(path), delete current file-path
def rem(path)
    if File.file?(path)
        File.delete(path)
        return "file name:#{path} deleted."
    else
        return "Error: non valid pathway ."
    end
end

#3 touch(filename), input str output file with str name
def touch(filename)
    while !File.file?(filename)
        puts "input #{filename} is non valid filename"
        filename = gets.chomp
    end
    new_file = File.open(filename, "w")
    new_file.close
    return "file with name: #{filename} has been created"

end

#5 mv(filename, destination), filename = current path, destination = relative existing map, move filename to destination
def mv(filename, destination)
    while !File.file?(filename)
        puts "input #{filename} is non valid filename"
        filename = gets.chomp
        while !File.directory?(destination)
            puts "input #{destinaiton} is non valid destination"
            destination = gets.chomp
        end
    end
    File.rename(filename, "#{destination}")
end
