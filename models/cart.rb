class Cart
  attr_accessor :item
  @@items = []

  def item(name, price)
    @name = name
    @price = price
    @@items << self
  end

  def self.all
    @@items
  end

end
