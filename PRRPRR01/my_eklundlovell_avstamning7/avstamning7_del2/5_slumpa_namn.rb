#random name generation

puts "enter file directory"
directory = gets.chomp

while File.file?(directory) != true
    puts "invalid directory, input new directory"
    directory = gets.chomp
end

index = 0
temporary = File.readlines(directory)
namnlista = []
while index < temporary.length
    namnlista << temporary[index].chomp
    index += 1
end
index = 0

if File.file?("namn_kvar.txt") == true
    File.delete("namn_kvar.txt")
    namn_kvar = File.open("namn_kvar.txt", "w")
        for index in 0..namnlista.length
            namn_kvar.puts("#{namnlista[index]}")
            p index
            p namnlista[index]
        end

else
    namn_kvar = File.open("namn_kvar.txt", "w")
    for index in 0..namnlista.length
        namn_kvar.puts("#{namnlista[index]}")
        p index
        p namnlista[index]
    end
end


if File.file?("dragna_namn.txt") == true
    File.delete("dragna_namn.txt")
    File.open("dragna_namn.txt", "w")
else
    File.open("dragna_namn.txt", "w")
end


puts "enter yes to continue, q to exit"
input = gets.chomp

while input != "q" #denna delen av koden funkar inte helt
    puts "type s to choose a single name, m for multiple names, q to quit"
    input = gets.chomp
    if input == "s"
        deleted = rand 0..namn_kvar.length - 1
        name = namn_kvar[deleted]
        dragna_namn = File.open("dragna_namn.txt", "a")
        dragna_namn.puts("#{name}")
        namn_kvar.delete_at(deleted)
        return "name #{name} has been chosen"

    elsif input == "m"
        puts "chose amount of names"
        amount = gets.to_i

        while amount <= 0
            puts "input positive integer"
            amount = gets.to_i
            while amount > namn_kvar.length - 1
                puts "not enough names, enter a lower integer"
                amount = gets.to_i

            end

            deleted = rand 0..namn_kvar.length - 1
            name = namn_kvar[deleted]
            dragna_namn = File.open("dragna_namn.txt", "a")
            dragna_namn.puts("#{name}")
            namn_kvar.delete_at(deleted)
            return "name #{name} has been chosen"
            amount += 1
        end
    else
        puts "invalid input, system exit"
    end
end
dragna_namn.close
namn_kvar.close
