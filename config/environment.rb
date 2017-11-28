ENV['SINATRA_ENV'] ||= "development"

require 'bundler/setup'
Bundler.require(:default, :test, ENV['SINATRA_ENV'])

require_relative '../app'
require_all 'models'