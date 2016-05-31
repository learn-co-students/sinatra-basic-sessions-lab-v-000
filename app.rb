require_relative 'config/environment'

class App < Sinatra::Base

  get "/" do

    erb :index
  end

  post "/checkout" do
    @shopping_cart = @@items.to_index.each {|merch| merch}
  
    erb :checkout
  end

end
