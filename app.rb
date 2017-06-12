require_relative 'config/environment'

class App < Sinatra::Base

  set :views, Proc.new { File.join(root, "/views/") }

  configure do
    enable :sessions
    set :session_secret, "secret"
  end

  get '/' do
    erb :index
  end

  post '/checkout' do
    # binding.pry
    session[:item] = params[:item]
    @session = session
    erb :cart
  end


end
