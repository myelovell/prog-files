#2019-11-14, avsta:mning 3: skriva funktioner
def countdown(num)
    while num < 0
        puts "enter a number larger than 0"
        num = gets.to_i
    end

    while num > 0
        num -= 1
            sleep(0.5)
        puts num
        if num == 0
            puts "take off!"
            return
        end
    end
end
