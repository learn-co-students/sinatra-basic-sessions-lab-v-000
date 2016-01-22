require 'pry'
class Item
  attr_accessor :name

  def initialize(params)
 
    @name = params[:item]
  end 
end