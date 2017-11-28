require_relative 'config/environment'
require 'pry'
class App < Sinatra::Base
  configure do
    enable :sessions
    set :session_secret, "qigryxkvddkimqaleuuxckthzmdjfrbybxhusudyxhuggfcmdb"
  end

  get '/' do
    erb :index
  end

  post '/checkout' do
    @item = params[:item]
    session['item'] = params[:item]
    erb :checkout
  end
end
