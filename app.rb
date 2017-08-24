require_relative 'config/environment'

class App < Sinatra::Base

    configure do
      enable :sessions
      set :session_secret, "secret"
    end

  get '/' do
    erb :index
  end

  post '/checkout' do
    @item = params[:item]
    @price = params[:price]

    session["item"] = @item
    @sesson = session


    erb :checkout
  end

end
