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
  session["item"] = params[:item]
  @session = session
  erb :checkout
  end
end

# class Item
#   attr_accessor :item
#   ITEMS = []

#   def initialize(params)
#     @item = params[:item]
#     ITEMS << self    
#   end

#   def self.all
#     ITEMS
#   end

# end