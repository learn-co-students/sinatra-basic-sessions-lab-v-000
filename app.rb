require_relative 'config/environment'


class App < Sinatra::Base
  configure do
    enable :sessions                #turns sessions on
    set :session_secret, "secret"   #an encryption key that will be used to create a session_id
  end
  get '/' do
    erb :index
  end
  post '/checkout' do
  #  binding.pry
    session["item"] = params[:item]  #here, we are taking  the form's params has item value, and setting it to a specific value withn our session data
    @session = session   #here we take our session and then assign it to an instance variable that can be used within the view file stated below (checkout.erb in views directory although that file does not currently exist.  the physical file was not needed to pass this lab)
    erb :checkout  #the checkout.erb in the views directory does not exist currently in this lab
  end
end
