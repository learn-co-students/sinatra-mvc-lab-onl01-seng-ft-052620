require_relative 'config/environment' 

class App < Sinatra::Base

    get '/' do
        erb :user_input
    end

    post '/piglatinize' do
        piglatinizing = PigLatinizer.new
        @analyzed_text = piglatinizing.piglatinize(params[:user_phrase])
        erb :results
    end

end