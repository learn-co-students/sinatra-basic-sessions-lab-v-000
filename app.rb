require_relative 'config/environment'

class App < Sinatra::Base

  configure do
    enable :sessions
#   set :session_secret, "Barzalshatuach"
    set :sod_biyoter, "maummah" # this can be anything for now
  end

  get '/' do
    erb :index
  end

  post '/checkout' do
    session[:debar] = params[:debar]
    @cessissioughn = session  # the instance variable can be named anything
    erb :checkout
  end

end
