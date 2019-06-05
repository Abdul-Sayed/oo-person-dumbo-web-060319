# your code goes here

require "pry"
require "rspec"

class Person
  attr_accessor :bank_account
  attr_reader :name, :happiness, :hygiene

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def happiness=(happiness)
    @happiness = happiness.clamp(0, 10)
  end

  def hygiene=(hygiene)
    @hygiene = hygiene.clamp(0, 10)
  end

  def clean?
    if @hygiene > 7
      return true
    else
      return false
    end
  end

  def happy?
    if @happiness > 7
      return true
    else
      return false
    end
  end

  def get_paid(pay)
    @bank_account += pay
    return "all about the benjamins"
  end

  def take_bath
    if (@hygiene += 4) > 10
      @hygiene = 10
    else
      @hygiene += 4
    end

    return "♪ Rub-a-dub just relaxing in the tub ♫"
  end
end
