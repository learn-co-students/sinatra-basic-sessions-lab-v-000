require_relative 'config/environment'

class App < Sinatra::Base

 get '/' do
   erb :index
 end

 post '/checkout' do
   @item = params
   session[:item] = @item["item"]

   erb :checkout

 end



end
