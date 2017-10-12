require_relative 'config/environment'

class App < Sinatra::Base

  configure do
    enable :sessions
    set :SESSION_SECRET, "secret"
  end


  get '/' do
    erb:'index'
  end

  post "/checkout" do
      session[:item]=params[:item]

    erb:'/'
  end

end
