#2020-04-21, sum of user input
sum = 0
number = 0

puts "We will output the sum of your inputs!\n Enter: END when done"
puts "Please don't write a fucking letter i will corrupt your pc"

while number != "END"
    number = gets.chomp
    if number != "END"
        sum += number.to_f
    end
end

puts "Sum: #{sum}"
