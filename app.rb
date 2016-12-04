require_relative 'config/environment'

class App < Sinatra::Base

  configure do 
    enable :sessions
    set :session_secret, "sphagnum-esplanade"
  end


  get '/' do
    erb :index
  end

  post '/checkout' do
    session[:item] = params[:item]
    @view_session = session
    @view_session[:item]
  end
end