# 2019-10-13, summan av alla nummer upp till num
#egen version
puts "return sum of all number up to input num"
puts "enter number"
num = gets.to_i

def sum(num)
    while num <= 0
        puts "enter a positive num"
        num = gets.to_i
    end
    cur_num = 0
    sum = 0
    while cur_num < num
        cur_num += 1
        sum += cur_num
    end
    return sum
end

puts sum(num)
