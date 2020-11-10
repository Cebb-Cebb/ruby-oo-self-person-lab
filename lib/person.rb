# your code goes here
require 'pry'
class Person
    attr_accessor :bank_account, :happiness, :hygiene
    attr_reader :name
    attr_writer 

  def initialize(name)
    @name = name 
    @bank_account = 25 
    @happiness = 8
    @hygiene = 8

  end 

  def happiness
    if @happiness > 10 # conditional then the statement 
        @happiness = 10
        elsif @happiness < 0 
            @happiness = 0
    else 
        @happiness = @happiness
    end 
  end 


   def hygiene
    @hygiene = 10 if @hygiene > 10 # statement then the conditional
    @hygiene = 0 if @hygiene < 0   # codes in a way  that you can speak 
    @hygiene = @hygiene            # it out loud and make sense of it. 
    end
    
    def happy?
      @happiness > 7 ? true : false
    end 
    
    def clean?
      @hygiene > 7 ? true : false
    end 
   
    def get_paid(salary)
        @bank_account += salary
        "all about the benjamins"
    end 

    def take_bath
        @hygiene += 4
        self.hygiene=(@hygiene)
        # binding.pry 
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end 

    def work_out
        # binding.pry 
        @hygiene -= 3
        self.hygiene=(@hygiene)
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
            friend.happiness -= 2
            self.happiness -= 2
            "blah blah partisan blah lobbyist" 
            elsif topic == "weather"
                friend.happiness += 1
                self.happiness += 1
            "blah blah sun blah rain"
            else 
                "blah blah blah blah blah" 
        end 
      

    end 
    




end 
