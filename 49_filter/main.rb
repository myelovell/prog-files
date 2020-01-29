require_relative 'lib/filter.rb'

x1 = [8, 2, 0, 2, 5]
x2 = 2
puts filter(x1, x2)

y1 = [8, 2, 0, 2, 5]
y2 = "2"
puts filter(y1, y2)

z1 = ["bosse", "olof", "olof", "kalle", "olof"]
z2 = "olof"
puts filter(z1,z2)
