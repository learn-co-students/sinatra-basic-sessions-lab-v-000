require_relative 'config/environment'

class App < Sinatra::Base
  # 1.enable
  # 2. set secrete
  configure do
    enable :sessions
    set :session_secret, "secret"
  end

  get '/' do
    erb :index
  end

  post '/checkout' do
    session[:item] = params[:item]
    @session = session
  #is it just one item?   @item.contents = Item.new(params [:item])
    erb :checkout
  end
end
