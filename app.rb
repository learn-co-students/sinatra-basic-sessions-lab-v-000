require_relative 'config/environment'

configure do
  enable :sessions
  set :session_secret, "secret"
end

class App < Sinatra::Base

get '/' do
 @sessions = session


 erb :index
end

post '/checkout' do
  @params = params
  session[:item] = @params[:item]
  @sessions[:item]

 erb :index
end

end
