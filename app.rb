require_relative 'config/environment'
require 'pry'
class App < Sinatra::Base

 configure do
   enable :session
   set :session_secret, "secret"
 end

  get '/' do
    erb :index
  end

  post '/checkout' do
    session[:item] = params[:item]
    @our_session = session
    erb :display
  end

end
