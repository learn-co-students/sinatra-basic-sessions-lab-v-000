class Item
  attr_accessor :item, :value
  ITEMS = []
      def initialize(item, value)
      @item = item
      @value = value
      ITEMS << self
    end
end
