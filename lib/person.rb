require 'pry'

class Person

  attr_reader :name, :happiness, :hygiene
  attr_accessor :bank_account

  MAX_HAPPINESS = 10
  MIN_HAPPINESS = 0

  MAX_HYGIENE = 10
  MIN_HYGIENE = 0

  def initialize(name)
    @name = name
    @bank_account = 25.00
    @happiness = 8
    @hygiene = 8
  end

  def happiness=(num)
    if num > MAX_HAPPINESS
      @happiness = MAX_HAPPINESS
    elsif num < MIN_HAPPINESS
      @happiness = MIN_HAPPINESS
    else
      @happiness = num
    end
  end

  def hygiene=(num)
    if num > MAX_HYGIENE
      @hygiene = MAX_HYGIENE
    elsif num < MIN_HYGIENE
      @hygiene = MIN_HYGIENE
    else
      @hygiene = num
    end
  end

  def clean?
    if @hygiene > 7
      true
    else
      false
    end
  end

  def happy?
    if @happiness > 7
      true
    else
      false
    end
  end

  def get_paid(amount)
    self.bank_account = self.bank_account + amount
    return "all about the benjamins"
  end

  def take_bath
    self.hygiene = self.hygiene + 4
    return "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.happiness = self.happiness + 2
    self.hygiene = self.hygiene - 3
    return "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    self.happiness = self.happiness + 3
    friend.happiness = friend.happiness + 3
    return "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(friend, topic)
    if topic == "politics"
      self.happiness = self.happiness - 2
      friend.happiness = friend.happiness - 2
      return "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      self.happiness = self.happiness + 1
      friend.happiness = friend.happiness + 1
      return "blah blah sun blah rain"
    else
      return "blah blah blah blah blah"
    end
  end



end
