#2020-11-18, digital vending machine

class Vending_machine
    def initialize()
        @cash = 80
        @products = {
            #product: position, price, amount
            "apple" => ["A1", 8.99, 5],
            "banana" => ["B1", 3.99, 5],
            "orange" => ["C1", 7.49, 5],
            "grapes" => ["D1", 34.99, 3],

            "snickers" => ["A2", 7.49, 8],
            "mentos" => ["B2", 7.95, 8],
            "center" => ["C2", 13.95, 8],
            "marabou_bar" => ["D2", 14.49, 5],

            "monster" => ["A3", 17.99, 4],
            "nocco" => ["B3", 21.95, 4],
            "celsius" => ["C3", 14.95, 4],
            "redbull" => ["D3", 11.99, 4],

            "lays_salt" => ["A4", 18.95, 3],
            "olw_grill" => ["B4", 23.95, 2],
            "estrella_salty" => ["C4", 23.95, 2],
            "owl_sour_cream" => ["D4", 23.95, 2]
        }
        @product_name = ["apple", "banana", "orange", "grapes", "snickers", "mentos", "center", "marabou_bar", "monster", "nocco", "celsius", "redbull", "lays_salt", "olw_grill", "estrella_salty", "owl_sour_cream", "empty"]
    end

    def display_products()
        puts "     A             B             C                 D
    -------------------------------------------------------------------
        1 |#{@products["apple"][0]}: #{@product_name[0]}  #{@products["banana"][0]}: #{@product_name[1]}  #{@products["orange"][0]}: #{@product_name[2]}  #{@products["grapes"][0]}: #{@product_name[3]}
        2 |#{@products["snickers"][0]}: #{@product_name[4]}  #{@products["mentos"][0]}: #{@product_name[5]}  #{@products["center"][0]}: #{@product_name[6]}  #{@products["marabou_bar"][0]}: #{@product_name[7]}
        3 |#{@products["monster"][0]}: #{@product_name[8]}  #{@products["nocco"][0]}: #{@product_name[9]}  #{@products["celsius"][0]}: #{@product_name[10]} #{@products["redbull"][0]}: #{@product_name[11]}
        4 |#{@products["lays_salt"][0]}: #{@product_name[12]} #{@products["olw_grill"][0]}: #{@product_name[13]} #{@products["estrella_salty"][0]}: #{@product_name[14]} #{@products["owl_sour_cream"][0]}: #{@product_name[15]}"
    end

    def pay_cost()

    end

    def pick_product()
        puts "What would you like to buy?"
        display_products()
        product = gets.chomp
        if product == @products["apple"][0] #find a way to loop through it maybe?
            if #check if any product left
            puts "This item costs #{@products["apple"][2]}, proceed to purchase?"
            puts "yes / no"
            choice = gets.chomp
            while choice != "yes" || "no"
                puts "This item costs #{@products["apple"][2]}, proceed to purchase?"
                puts "yes / no"
                choice = gets.chomp
            end
            if choice == "no" #create an option to quit
                pick_product()
            else
                if (@cash -= @products["apple"][2]) < 0
                    puts "Not enough cash"
                    pick_product()
                else
                    @cash -= @products["apple"][2]
                end
            end



        end
    end
end
vending_machine = Vending_machine.new
vending_machine.display_products
