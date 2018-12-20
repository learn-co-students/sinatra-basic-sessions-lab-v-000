require_relative 'config/environment'

configure do
  enable :sessions
  set :session_secret, "secret"
end

class App < Sinatra::Base

  configure do
    enable :sessions
    set :session_secret, "secret"
  end


  get '/' do

    erb :index
  end

  post '/checkout' do
    # binding.pry

    @item = Item.new(params[:item])

    @items = Item.all

    session["item"] = "socks"
    @session = session

    erb :checkout
  end

end
