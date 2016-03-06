class Cart
  attr_accessor :item

  @@items = []

  def self.items
    @@items
  end
end