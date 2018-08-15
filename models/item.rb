class Item
    attr_accessor :item
 
    ITEMS = []
    
     def initialize(params)
       @item = args[:item]
       ITEMS << self
     end
    
     def self.all
       ITEMS
     end
 
     def self.clear
        ITEMS.clear
     end
 end