#2020-01-23

def mynt_tack(mynt)
    while !mynt.is_a?(Integer)
        puts "input is not an integer, input integer"
        mynt = gets.to_i
    end

    tia = 0
    femma = 0
    enkrona = 0

    if mynt < 0
        return "you have no coins"
    else
        while mynt > 10
            mynt -= 10
            tia += 1
        end
        if mynt == 0
            return "#{tia} tiokronor"
        else
            while mynt > 5
                mynt -= 5
                femma += 1
            end
            if mynt == 0
                return "#{tia} tiokronor, #{femma} femkronor"
            else
                while mynt > 0
                    mynt -= 1
                    enkrona += 1
                end
                return "#{tia} tiokronor, #{femma} femkronor, #{enkrona} enkronor"
            end
        end
    end
end
