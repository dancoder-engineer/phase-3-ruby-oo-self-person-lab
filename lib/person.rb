# your code goes here
class Person

    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account

    def initialize(name)
        @name=name
        @bank_account=25
        @happiness=8
        @hygiene=8
    end

    def happiness=(value)
        if value > 10
            @happiness=10
            return @happiness
        end
        if value < 0
            @happiness=0
            return @happiness
        end
        @happiness=value
    end

    def hygiene=(value)
        if value > 10
            @hygiene=10
            return @hygiene
        end
        if value < 0
            @hygiene=0
            return @hygiene
        end
        @hygiene=value
    end

    def happy?
        return true if @happiness > 7
        return false
    end

    def clean?
        return true if @hygiene > 7
        return false
    end

    def get_paid(amount)
        @bank_account+= amount
        "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness += 2
        self.hygiene = self.hygiene-3
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end





    def start_conversation(friend, topic)
        case topic
            when "politics"
                self.happiness -= 2
                friend.happiness -= 2
                "blah blah partisan blah lobbyist"

            when "weather"
                self.happiness += 1
                friend.happiness += 1
                "blah blah sun blah rain"

            else
                "blah blah blah blah blah"
                
        end

    end


end

