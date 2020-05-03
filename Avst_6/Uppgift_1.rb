#2020-04-22, uppgift 1

#ac - koden funkar inte, börjar rescue blocket innan
def crash(x, y)
    begin
        z = x / y
    rescue ZeroDivisionError => e
        puts "Kan inte dela med 0"
        exit
    return z
end

#b  - kod funkar, gets.to_i tar bort \n och dylikt. onöfigt med gets.chomp.to_i
def crash(x, y)
    begin
        z = x / y
    rescue ZeroDivisionError => e
        puts "Kan inte dela med 0"
        puts "Ange en ny nämnare:"
        y = gets.chomp.to_i
        retry
    end
    return z
end

#c - kod funkar, --puts e-- returnerar hela felmeddelandet och gör det otydligt för användaren
def crash(x, y)
    begin
        z = x / y
    rescue ZeroDivisionError => e
        puts e
        y = gets.chomp.to_i
        retry
    end
    return z
end


#Optimerad kod:
def crash(x, y)
    begin
        z = x / y
    rescue => e
        puts "Numerator #{e.message}, Assign new denominator:"
        y = gets.to_i
        retry
    end
    return z
end
