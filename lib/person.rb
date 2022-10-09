# class Person
#     def initialize(name)
#         @name = name
#     end
#     def name
#         @name
#     end
#     def bank_account
#         @bank_account = 25
#     end
#     def bank_account=(bank_account)
#         @bank_account = bank_account
#     end
#     def happiness
#         @happiness = 8
#     end
#     def happiness=(happiness)
#         @happiness
#     end
# end


class Person
    attr_accessor :bank_account
    attr_writer :happiness, :hygiene
    attr_reader :name

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end
    def bank_account=(bank_account)
        @bank_account = bank_account
    end
    def happiness
        @happiness.clamp(0,10)
    end
    def hygiene
        @hygiene.clamp(0,10)
    end
    def take_bath
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end
    def happy?
        @happiness > 7 ? true : false
    end
    def clean?
        @hygiene > 7 ? true : false
    end
    def get_paid(num)
        @bank_account += num
        "all about the benjamins"
    end
    def work_out
        self.hygiene -= 3
        self.happiness += 2
        "♪ another one bites the dust ♫"
    end
    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end
    def start_conversation(friend, topic)
        if topic == "politics"
            self.happiness -= 2
            friend.happiness -= 2
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness += 1
            friend.happiness += 1
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    end
end