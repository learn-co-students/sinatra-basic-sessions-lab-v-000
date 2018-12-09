require_relative 'config/environment'

class App < Sinatra::Base

configure do
  enable :sessions
  set :session_secret, "111"
end

get '/' do
  @session = session
  erb :index
end

post '/checkout' do
  @item = params[:item]
  session['item'] = @item
  erb :purchase
  # binding.pry
end

end
