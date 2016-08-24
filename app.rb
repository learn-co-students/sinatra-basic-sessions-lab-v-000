require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/' do
    erb :index
  end

  post '/checkout' do
    @item = params[:item]
    erb :checkout
  end

end