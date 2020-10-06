#2020-09-09, practice 1
class Person
    def initialize(first_name, last_name)
        @first_name = first_name
        @last_name = last_name
    end

    def first_name()
        return @first_name
    end

    def last_name()
        return @last_name
    end
end

user = Person.new("My", "Eklundh Lovell")
puts user.first_name()
puts user.last_name()
