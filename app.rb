require_relative 'config/environment'

class App < Sinatra::Base

  configure do
   enable :sessions
   set :session_secret, "b2edaebbe8f990afab4a61898adf6480bee4e5a01d0fcfcca58498994bdd3e17ffbeda213e007f75e849b220854f8015ff2cbac45a923b74c22e62a2ab6f4ac7"
  end

  get '/' do
    erb :index
  end

  post '/checkout' do
    session["item"] = params[:item]
    @session = session
    "#{@session[:item]}"
  end

end
