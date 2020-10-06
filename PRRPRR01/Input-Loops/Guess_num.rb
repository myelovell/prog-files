#2020-04-12, user input guess number

puts "guess my number >:)"

puts "enter lowest guessable number:"
lowest = gets.to_f
    while lowest < 0
        puts "enter a number bigger than 0"
        lowest = gets.to_f
    end

puts "enter highest guessable number:"
highest = gets.to_f
    while highest < 0
        puts "enter a number bigger than 0"
        highest = gets.to_f
    end

puts "your amount of tries:"
tries = gets.to_i
    while tries < 1
        puts "enter a number bigger than 0"
        tries = gets.to_i
    end

goal = rand(lowest..highest)


puts "enter your name:"
name = gets.chomp
puts "Enter your guess:"
guess = gets.to_f

while guess != goal
    tries -= 1
    puts "wrong, you have #{tries} tries left"
    guess = gets.to_f
    if tries < 1
        puts "#{name} you whore, i said you have no tries left"
        break
    end
end

puts "congrats! you have guessed the correct number"
