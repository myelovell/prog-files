class Fruit_basket
    def initialize(array_with_fruit)
        @items_in_basket = array_with_fruit
    end

    def add_fruit(fruit)
        if fruit.class == Fruit
            @items_in_basket.append(fruit)
            return
        end
        puts "not a fruit!"
    end # add_fruit

    def print_all_fruit ()
        i = 0
        while i < @items_in_basket.length
            puts @items_in_basket[i].name #runs function name()
            i += 1
        end
    end # print_all_fruit
end # class Fruit_basket

class Fruit
    def initialize(name)
        @name = name
        @one_apple = "apple"
    end

    def name()
        return @name
    end
end # class Fruit
# testkod
one_apple = Fruit.new("apple")
one_banana = Fruit.new("banana")

array = [one_apple]
x = Fruit_basket.new(array)
x.add_fruit(one_apple)
x.add_fruit(one_banana)
x.add_fruit("orange") #not a fruit!
x.print_all_fruit

puts x.class
puts x[0].class
