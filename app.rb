require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do
      erb :user_input
    end

    post '/piglatinize' do
        word = PigLatinizer.new
        @result = word.piglatinize(params[:user_phrase])
        
        erb :words
    end
end