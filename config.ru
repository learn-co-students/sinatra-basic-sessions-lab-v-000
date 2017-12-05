require './config/environment'

configure do
  enable :sessions
  set :session_secret, "secret"
end

run App
