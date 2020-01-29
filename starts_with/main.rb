require_relative "lib/starts_with.rb"

x = starts_with("hello", "h")
puts x

y = starts_with("hello", "e")
puts y

a = starts_with("hello", "hello")
puts a
