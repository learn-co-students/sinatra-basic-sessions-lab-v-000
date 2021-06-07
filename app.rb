require_relative 'config/environment'

class App < Sinatra::Base

  configure do
    enable :sessions
    set :session_secret, "orange"
  end

  get '/' do
    erb :index
  end


  post '/checkout' do
    #take params form and add it to session Hash
    #Key should be item and value should be user input
    #Store session hash as instance variable to scope it views
    session[:item] = params[:item]
    @session = session
    erb :checkout
  end

end
