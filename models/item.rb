class Item
  attr_reader :name
  
  ITEMS = []
  
  def self.all
    ITEMS
  end
  
  def initialize(params)
    @name = params[:name]
    ITEMS << self
  end
end