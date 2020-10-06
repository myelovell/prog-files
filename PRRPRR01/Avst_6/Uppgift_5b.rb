#2020-04-29, Nim mini pvp game

#no argument input but user inputs
#p1 - player 1 name
#p1_amount - player 1's amount of picked up sticks
#p2 - player 2 name
#p2_amount - player 2's amount of picked up sticks
#user_input = amount of picked up sticks/game menu trigger

def nim()
    starter = #game header
    "Welcome to NIM a PvP 2 player game!
['i' for instructions - 'q' to quit]\n"

    instructions = #game menu
    "Goal: The player who picks up the last stick looses!

Game rules:
- You've got between 7-20 sticks in a pile
- Take turns to pick up between 1-3 sticks
- Don't be a sore looser

In beginning of each round:
enter 'i' for instructions
enter 'q' to quit\n"

    system("cls")
    puts "#{starter}\n\n #{instructions}\n"
    stick_amount = rand(7..20)
    player = 1

    puts "Enter Player 1 name:"
    p1 = gets.chomp
    puts "\nEnter Player 2 name:"
    p2 = gets.chomp

    p1_amount = 0
    p2_amount = 0

    while stick_amount > 0 #each loop is 1 player turn
        system("cls")
        puts "#{starter}\n"
        puts "Current score: \nPlayer1: #{p1_amount} \nPlayer2: #{p2_amount}\n"
        puts "#{stick_amount} sticks left\n"

        #switch between p1 and p2 turn
        if (player % 2) != 0
            puts "#{p1} Input number between 1-3:
(Unallowed inputs: letters / 0)"
            user_input = gets.chomp
        else
            puts "#{p2} Input number between 1-3:
(Unallowed inputs: letters / 0)"
            user_input = gets.chomp
        end

        #in the begining of each round, access game settings etc
        while user_input.to_i == 0
            if user_input == "q"
                if (player % 2) != 0
                    puts "#{p1} quit the game"
                else
                    puts "#{p2} quit the game"
                end
                break
            elsif user_input == "i"
                system("cls")
                puts instructions
                exit = gets.chomp
                while exit != "exit"
                    puts "enter 'exit' when done"
                    exit = gets.chomp
                end
                system("cls")
                puts "#{starter}\n"
                puts "Current score: \nPlayer1: #{p1_amount} \nPlayer2: #{p2_amount}\n"
                puts "#{stick_amount} sticks left"
            else
                puts "Input is not a number \nReplace with number"
                user_input = gets.to_i
            end
        end
        user_input = user_input.to_i

        while user_input > 3 || user_input < 1 #input validation for amount of sticks picked up
            if (player % 2) != 0
                puts "input is not between 1-3
#{p1} Input number between 1-3:
(Unallowed inputs: letters / 0)"
                user_input = gets.to_i
            else
                puts "input is not between 1-3
#{p2} Input number between 1-3:
(Unallowed inputs: letters / 0)"
                user_input = gets.to_i
            end
        end

    stick_amount -= user_input
    player += 1

    end
    #announce winner and game settings
    system("cls")
    puts "#{starter}\n"
    if (player % 2) != 0
        puts "#{p1} won this round of Nim"
    else
        puts "#{p2} won this round of Nim"
    end

    puts "enter 'i' for instructions
enter 'q' to quit"

end

puts nim()
