puts "CONFIG/ENVIRONMENT.RB entered"

ENV['SINATRA_ENV'] ||= "development"

puts "  ENV['SINATRA_ENV']: #{ENV['SINATRA_ENV']}"

require 'bundler/setup'
Bundler.require(:default, ENV['SINATRA_ENV'])

require './app'
require_all 'models'