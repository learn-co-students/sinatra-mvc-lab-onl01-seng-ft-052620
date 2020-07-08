require_relative 'config/environment'
# require_relative 'models/piglatinizer'

class App < Sinatra::Base
    #Create a POST method in your controller (app.rb) to receive your form's params.
    get '/' do
        erb :user_input
    end

    post '/piglatinize' do
        pl = PigLatinizer.new
        @analyzed_text = pl.piglatinize(params[:user_phrase])

        erb :results
    end

end