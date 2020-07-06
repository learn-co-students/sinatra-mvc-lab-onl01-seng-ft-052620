require_relative 'config/environment' 

class App < Sinatra::Base

    get '/' do
        erb :user_input
    end

    post '/piglatinize' do
        pigging = PigLatinizer.new
        @analyzed_text = pigging.piglatinize(params[:user_phrase])
        erb :results
    end

end