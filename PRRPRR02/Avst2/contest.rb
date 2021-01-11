#2020-12-09 - object oriented programming test 2

class Adult_participant
    attr_reader  :name,  :swimming,  :cycling,  :running,  :startTime,  :guessedTime, :participants
    def initialize()
        @name = name
        @swimming = swimming #true | false
        @cycling = cycling #true | false
        @running = running #true | false
        @startTime = startTime #00.00
        @guessedTime = guessedTime #"00h 00min" hour minutes
        @participant = [@name, @swimming, @cycling, @running, @startTime, @guessedTime]
        @participants = []
    end

    def inspect
        "#{@name}, #{@swimming}, #{@cycling}, #{@running}, #{@startTime}, #{@guessedTime}"
    end

    #input from .txt file
    def participant_ist()
        temporary = File.readlines("participants.txt") #outputs with \n
        for index in 0...temporary.length
            user = temporary[index].chomp
            @participants << user.split(",")
        end
    end

    def output_participant_list()

    end


end

class Youth_participants < Adult_participant
    def initialize()
        @child = name
        @adult = @name

    end

    def connect()

    end

end

class Sort
    def sort_by()
        self.sort {|a,b| a.send(attribute) <=> b.send(attribute) }
    end
#sort by:
    # y/n on @swimming
    # y/n on @cycling
    # y/n on @running
    # earliest start time -> latest start time @startTime

    # eventuellt sort by average speed? (@guessedTime/y sports)
end

# p @participants.sort_by(:attribute)
