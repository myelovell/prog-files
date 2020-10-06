#2020-08-26, roman num to arabian num / arabian num to roman num converter

puts "Convert Roman number to Arabian (nomral) or Arabian (normal) to Roman?"
number_type = gets.chomp

while true #temporary while loop
    if number_type == "arabian"|| "Arabian"
        arabian_num = number_type.to_int
    elsif number_type == "roman" || "Roman"
        roman_num = number_type
        if roman_num < 1 || roman_num > 3999 #should probably be a while loop, while not true
            puts "input value must be between 1-3999
            input number:"
            roman_num = gets.to_int
        end

    else
        puts "invalid input
        valid input: arabian, Arabian, roman, Roman"
        puts "Convert -Roman- number to Arabian (nomral) or -Arabian- (normal) to Roman?"
        number_type = gets.chomp
    end
end

=begin
letter_value = [
"M" == 1000,
"D" == 500,
"C" == 100,
"L" == 50,
"X" == 10,
"V" == 5,
"I" == 1,]
=end
