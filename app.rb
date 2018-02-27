require_relative 'config/environment'
#====================================================== 
class App < Sinatra::Base
#========================config======================== 
#---------------------------------------------session-# 
  configure do 
    enable :sessions
    set :session_secret, "secret"
  end
#========================routes======================== 
#-----------------------------------------------index-# 
  get "/" do 
  	erb :'index'
  end
#--------------------------------------------checkout-#  
  post "/checkout" do 
    session[:item] = params[:item]
    @session = session
    erb :'checkout'
  end
#====================================================== 
end