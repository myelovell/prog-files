require_relative 'lib/is_empty.rb'

x = ["", ]
puts is_empty(x)

y = ["hello", 55]
puts is_empty(y)

z =[]
puts is_empty(z)
