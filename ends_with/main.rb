require_relative "lib/ends_with.rb"

x = ends_with("hello", "h")
puts x

y = ends_with("hello", "o")
puts y

a = ends_with("hello", "hello")
puts a
