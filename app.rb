require_relative 'config/environment'

class App < Sinatra::Base

	configure do
		enable :sessions
		set :session_secret, "secret"
	end

	get '/' do
		@session = session
		erb :index
	end

	post '/checkout' do
		#The key should be item and the value should be the item the user entered to the purchase.
		session[:item] = params[:item]
		# store the session hash in an instance variable that you can access in the views.
		@session = session
		erb :checkout
	end

end
