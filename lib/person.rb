class Person
  attr_reader :name

  @@bank_account = 25

  def initialize(name)
    @name = name
  end

  def self.bank_account
    @@bank_account
  end
end