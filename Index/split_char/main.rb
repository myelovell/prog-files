require_relative 'lib/split_char'

x1 = "1;2;3;4;5"
x2 = ";"
puts split_char(x1,x2)

y1 = "Hello world today"
y2 = " "
puts split_char(y1,y2)

z1 = "ababab"
z2 = "b"
puts split_char(z1,z2)
