def nim()
    pinnar = 14
    plockade1 = 0
    plockade2 = 0
    puts "Skriv namn för spelare 1"
    spelare1 = gets.chomp
    puts "Skriv namn för spelare 2"
    spelare2 = gets.chomp

    while pinnar > 0
        puts "#{pinnar} pinnar finns kvar"
        puts "#{spelare1} välj 1-3 antal pinnar du vill plocka"
        plockade1 = gets.chomp

        while plockade1.to_i < 1 || plockade1.to_i > 3
            puts "Du kan välja mellan 1 och 3 antal att plocka"
            puts "Välj antal pinnar att plocka igen"
            plockade1 = gets.chomp
        end
        while plockade1.to_i > pinnar
            puts "Du kan inte plocka fler pinnar än vad som finns!"
            puts "Välj antal pinnar att plocka igen"
            plockade1 = gets.chomp
        end
        if plockade1.to_i == pinnar
            puts "#{pinnar} pinnar finns kvar"
            puts "#{spelare1} plockade sista pinnen vilket betyder att #{spelare2} vinner!"
            exit
        end
        pinnar = pinnar - plockade1.to_i
        puts "#{pinnar} pinnar finns kvar"
        puts "#{spelare2} välj 1-3 antal pinnar du vill plocka"
        plockade2 = gets.chomp
        while plockade2.to_i < 1 || plockade2.to_i > 3
            puts "Du kan välja mellan 1 och 3 antal att plocka"
            puts "Välj antal pinnar att plocka igen"
            plockade2 = 0
            plockade2 = gets.chomp
        end
        while plockade2.to_i > pinnar
            puts "Du kan inte plocka fler pinnar än vad som finns!"
            puts "Välj antal pinnar att plocka igen"
            plockade2 = gets.chomp
        end
        if plockade2.to_i == pinnar
            puts "#{pinnar} pinnar finns kvar"
            puts "#{spelare2} plockade sista pinnen vilket betyder att #{spelare1} vinner!"
            exit
        end
        pinnar = pinnar - plockade2.to_i
        puts "#{pinnar} pinnar finns kvar"
    end
    puts "Spelet är slut!"
end
