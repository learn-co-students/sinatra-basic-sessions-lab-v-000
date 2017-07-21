require_relative 'config/environment'

class App < Sinatra::Base
  configure do
    enable :sessions
    set :session_secret, "secret"
  end

  get '/' do#posts index action
    erb :index
  end

  post '/checkout' do
  #binding.pry
   session["item"] = params[:item]#sets to params
   @session = session #set to instance variable
   "#{@session['item']}" #post interpolated result to view
  end
end
