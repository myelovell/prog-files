class Person

  attr_reader :name, :age, :height

  def initialize(name, age, height)
    @name, @age, @height = name, age, height
  end

  def inspect
    "#@name #@age #@height"
  end

end


class Array

  def sort_by(attribute)
    self.sort {|a,b| a.send(attribute) <=> b.send(attribute) }
  end

end


people = []
people << Person.new("Ava", 5, 9)
people << Person.new("Ben", 2, 4)
people << Person.new("Carl", 6, 8)
people << Person.new("Dan", 3, 3)

p1 = people.sort_by(:name)
# p2 = people.sort_by(:age)
# p3 = people.sort_by(:height)

p p1
# p p2
# p p3
