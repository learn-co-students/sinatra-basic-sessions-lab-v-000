class Cart

  CART = []

  attr_accessor :name, :item

  def initialize(params)
    @item = params[:item]
    CART << self
  end

  def self.all
    CART
  end
end
