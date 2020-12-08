#2020-12-02, avst 1 card game
class Card_game #uppg 4
    def initialize()
        @card_amount =  @cards.length
        @cards =[
            "h1", "h2", "h3", "h4", "h5", "h6", "h7", "h8", "h9", "h10", "h11", #hearts
            "r1", "r2", "r3", "r4", "r5", "r6", "r7", "r8", "r9", "r10", "r11", #rubes
            "s1", "s2", "s3", "s4", "s5", "s6", "s7", "s8", "s9", "s10", "s11", #spades
            "c1", "c2", "c3", "c4", "c5", "c6", "c7", "c8", "c9", "c10", "c11", #clovers
            ]
        @picked_cards = []
    end

    def draw_card()
        drawn = @cards.sample
        puts "wow! you picked #{drawn}!"
        @cards.delete(drawn)
        @picked_cards << drawn
    end

    def recover_card()
        puts "which card do you want to put back?"
        puts @picked_cards
        recover = gets.to_s
        for index in 1..@picked_cards.length
            if recover == @picked_cards[index]
                puts"now returning #{@picked_cards[index]}"
                @picked_cards.delete(recover)
                @ards << recover
            elsif index == @picked_cards.length
                puts "that card has not been picked?? try again..."
                recover_card()
            end
        end
    end

    def shuffle_deck() #uppg4.1
        puts "do you wanna 1: shuffle the cards that are left? or 2: all cards together?"
        shuffle = gets.to_i
        if shuffle == 1
            @cards.shuffle!
            puts "the remaining cards have been shuffled! wow!"
        elsif shuffle == 2
            for index in 1..@picked_cards.length
                @cards << @picked_cards[index]
            end
            @cards.shuffle!
            puts "ALL cards have been shuffled! super wow!"
        else
            "that's not an option?? try again..."
            shuffle_deck()
        end
    end
end

class Matrix_card_game < Card_game
    def initialize()
        @matrix_cards = []
        @cards_value = 0
    end

    def add_new_card()
        puts "enter card name:"
        card_name = gets.chomp
        @matrix_cards << card_name
        @matrix_cards.shuffle!
        puts "enter card value:"
        value = gets.to_i
        @cards_value += value
        if @cards_value > 10000
            puts "oh no! while you were out studying ht blade your precious cards got stolen!!!! They were to valuabe..:"
            @matrix_cards = []
            @cards_value = 0
        end
        if @matrix_cards.length > 52
            puts "Yikes your cards got shuffled too many times, theyre now broken..."
            @matrix_cards = []
            @cards_value = 0
        end
    end
end
