class TaskA
    def initialize(task)
        if task == "b"
            TaskB.new.helloWorld()
        elsif task == "c"
            TaskC.new.helloYouThere()
        elsif task == "c-private"
            TaskC.new.answer()
        end
    end
end

class TaskB
    def helloWorld()
        puts "B: hello world"
    end
end

class TaskC
    def helloYouThere()
        puts "Hey! you there!"
    end

    private
    def answer()
        puts "-yes?!"
    end
end

TaskA.new("b")
TaskA.new("c")
TaskA.new("c-private")
