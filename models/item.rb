class Item
  attr_accessor :name

  ITEMS = []

  def initalize(params)
    @name = params[:name]
    ITEMS << self
  end

  def self.all
    ITEMS
  end

end
