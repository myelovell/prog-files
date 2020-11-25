


class Vending_machine
    def initialize()
        @cash = 80
        @products = {
            #product: position, price, amount
            apple: [A1, 8.99, 5],
            banana: [B1, 3.99, 5],
            orange: [C1, 7.49, 5],
            grapes: [D1, 34.99, 3],

            snickers: [A2, 7.49, 8],
            mentos: [B2, 7.95, 8],
            center: [C2, 13.95, 8],
            marabou_bar: [D2, 14.49, 5],

            monster: [A3, 17.99, 4],
            nocco: [B3, 21.95, 4],
            celsius: [C3, 14.95, 4],
            redbull: [D3, 11.99, 4],

            lays_salt: [A4, 18.95, 3],
            olw_grill: [B4, 23.95, 2],
            estrella_salty: [C4, 23.95, 2],
            owl_sour_cream: [D4, 23.95, 2]
        }
    end

    def display_products()
        puts "     A             B             C                 D
        -------------------------------------------------------------------
        1 |#{@products[0]}  #{@products[1]}  #{@products[2]}  #{@products[3]}
        2 |#{@products[4]}  #{@products[5]}  #{@products[6]}  #{@products[7]}
        3 |#{@products[8]}  #{@products[9]}  #{@products[10]} #{@products[11]}
        4 |#{@products[12]} #{@products[13]} #{@products[14]} #{@products[15]}"
    end

    def display_cash()
    end

    def pick_product()
        puts "What would you like to buy?"
        display_products()


    end


end
