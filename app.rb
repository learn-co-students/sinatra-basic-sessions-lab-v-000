require_relative 'config/environment'

class App < Sinatra::Base

  get "/" do

    erb :index
  end

  post "/checkout" do
    @shopping_cart = Cart.new(merchandize)
    erb :checkout
    end
  end

end
