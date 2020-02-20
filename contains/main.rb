require_relative 'lib/contains.rb'

x1 = ["hello", 7, 7, 8, 8, 5, 7]
x2 = 7
puts contains(x1,x2)

y1 = ["hello", 7, 7, 8, 8, 5, 7]
y2 = 4
puts contains(y1,y2)
