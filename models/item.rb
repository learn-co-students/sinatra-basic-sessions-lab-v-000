class Item
  attr_reader :item, :name

  @@all = []

  def initialize(params)
    @item = params[:item]
    @@all << self
  end

  def self.all
    @@all
  end

  end
