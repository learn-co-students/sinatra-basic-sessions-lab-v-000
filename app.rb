require_relative 'config/environment'

configure do
   enable :sessions
   set :session_secret, "hola mundo"
end

class App < Sinatra::Base

   get '/' do
      @session = session
      erb :index
   end

   post '/checkout' do
      session[:item] = params[:item]
      @session = session
   end

end
