require_relative 'config/environment'

class App < Sinatra::Base
  configure do
    enable :sessions
    set :session_secret, "36e5e17ebacf41a2fce0eba5216af5acc8b2f14bf7c5188b954c4caf3e86047731b45f73f692435ca9cf406cd5af2a009
                          d2a3ccd0ff1a1df096412d6a79ee61a"
  end

  get '/' do
    erb :index
  end

end
