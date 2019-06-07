class Person
  attr_reader :name

  @@all = []
  @@all_names = []

  def initialize(name)
    @@name = name
    @@all_names << name
    @all << self
  end

  def self.all
    @all
  end
end