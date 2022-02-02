class Person
    attr_reader :name
    attr_accessor :bank_account
    attr_accessor :happiness
    attr_accessor :hygiene

    def initialize(name, bank_account=25, happiness=8, hygiene=8)
        @name = name
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene
    end

    def happiness=(num)
        @happiness = num.clamp(0, 10)
    end

    def hygiene=(num)
        @hygiene = num.clamp(0, 10)
    end

    def happy? 
        self.happiness > 7
    end

    def clean?
        self.hygiene > 7
    end

    def get_paid(money)
        self.bank_account += money
        "all about the benjamins"
    end

    def take_bath(clean=4)
        self.hygiene += clean
        '♪ Rub-a-dub just relaxing in the tub ♫'
    end

    def work_out
        self.hygiene -= 3
        self.happiness += 2
        '♪ another one bites the dust ♫'
    end

    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person, topic)
        if topic == "politics"
            self.happiness -= 2
            person.happiness -= 2
            'blah blah partisan blah lobbyist'
        
        elsif topic == "weather"
            self.happiness += 1
            person.happiness += 1
            'blah blah sun blah rain'
        else
            'blah blah blah blah blah'
        end

        

    end

end
