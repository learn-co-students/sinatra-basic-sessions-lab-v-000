class Item
	attr_reader :item

	ITEMS = []

	def initialize(args)
		@item = args[:item]
		ITEMS << self
	end 

	def self.all
		ITEMS 
	end 

end