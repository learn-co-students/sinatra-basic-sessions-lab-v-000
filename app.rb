require_relative 'config/environment'

class App < Sinatra::Base

  configure do
    enable :sessions
    set :session_secret, "super_top_secret"
  end

  get '/' do
    erb :index
  end

  post '/checkout' do
    @item = params[:item]
    session["item"] = @item
    @session = session
    "#{@item}"
  end
end