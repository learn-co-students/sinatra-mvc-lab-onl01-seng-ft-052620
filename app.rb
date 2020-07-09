require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  get '/user_input' do
    erb :user_input
  end

  post '/user_input' do
    stuff = PigLatinizer.new
    @transformed = stuff.piglatinize(params[:user_phrase])

    erb :piglatinize
  end

  post '/piglatinize' do
    stuff = PigLatinizer.new
    @transformed = stuff.piglatinize(params[:user_phrase])
    erb :piglatinize
  end

end
