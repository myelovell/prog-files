#2020-09-09, heritage
class Animal
    def initialize(legs, lays_eggs)
        @legs = legs
        @lays_eggs = lays_eggs
    end

    def animal()
        return "Walks on #{@legs} legs \nLays eggs: #{@lays_eggs}"
    end
end

class Pets < Animal
    def initialize(legs, lays_eggs, aquatic, domestic)
        super(legs, lays_eggs)
        @aquatic = aquatic
        @domestic = domestic
    end

    def pets()
        return "Lives in water: #{@aquatic} \nIs domesticated: #{@domestic}"
    end
end

class Dog < Pets
    def initialize(legs, lays_eggs, aquatic, domestic, name, gender, breed)
        super(legs, lays_eggs, aquatic, domestic)
        @name = name
        @gender = gender
        @breed = breed
    end

    def dog()
        "The dog is named #{@name} \nThe dog is a #{@gender} \nThe dogs breed is: #{@breed}"
    end
end

bompi = Dog.new("4", "false", "false", "true", "Phoebe", "female", "Japanese spitz")
puts bompi.animal
puts bompi.pets
puts bompi.dog
