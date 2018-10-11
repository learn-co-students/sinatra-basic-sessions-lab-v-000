class Item
  attr_accessor :name

  @@all = []

  def initialize(args)
    @name = args[:name]
    @@all << self
  end

  def self.all
    @@all
  end
end