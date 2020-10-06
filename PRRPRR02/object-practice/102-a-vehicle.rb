#2020-09-09, practice 2

class Vehicle
    def initialize(type, brand, wheels, color)
        @type = type
        @brand = brand
        @wheels = wheels
        @color = color
    end

    def type()
        return "Car: #{@type}, brand: #{@brand}"
    end

    def decor()
        return "Amount of wheels: #{@wheels}, Color: #{@color}"
    end

    def set_type(new_type)
        @type = new_type
    end
end

car = Vehicle.new("truck", "Tesla", "5", "Cosmos black")

puts car.type()
puts car.decor()
car.set_type("scooter")
puts car.type()
