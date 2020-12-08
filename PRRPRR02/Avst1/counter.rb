$global_counter = 0

class My_counter
    @@class_counter = 0
    $global_counter += 1
    def initialize()
        @counter = 0
        @@class_counter += 1
        $global_counter += 1
    end

    def count_down()
        @counter -= 1
        $global_counter -= @counter
    end

    def print_all()
        puts "counter är:"
        puts @counter
        puts "class_counter är:"
        puts @@class_counter
        puts "global_counter är:"
        puts $global_counter
    end
end

counter1 = My_counter.new()
counter1.count_down
counter1.count_down
counter2 = My_counter.new()
counter3 = My_counter.new()
counter1.print_all

$global_counter = 10
counter3.print_all
