require_relative 'config/environment'

class App < Sinatra::Base

	configure do 
		enable :sessions
		set :session_secret, 'secret'
	end

	get '/' do 
		erb :index
	end

	get '/confirmation' do 
		redirect to :'/' unless session[:item]

		@item = session[:item]
		session[:item] = nil

		erb :confirmation
	end

	post '/checkout' do 
		session[:item] = params[:item]

		redirect to :'/confirmation'
	end

end