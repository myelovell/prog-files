require_relative 'lib/prepend.rb'

x1 = ["hello"]
x2 = 5
puts prepend(x1,x2)

y1 = ["hello"]
y2 = ["hello"]
puts prepend(y1,y2)
