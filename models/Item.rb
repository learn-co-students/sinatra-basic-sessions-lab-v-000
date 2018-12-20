class Item
  attr_reader :name

  ITEMS = []

  def initialize(params)
    @name = params['name']
    ITEMS << self
  end

  def self.all
    ITEMS
  end
end
