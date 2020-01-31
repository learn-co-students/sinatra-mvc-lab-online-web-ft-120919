require_relative 'config/environment'

class App < Sinatra::Base
    get '/' do
        erb :user_input
    end

    post '/piglatinize' do
        #@string = params[:string]
        @string = PigLatinizer.new
        
        @result = @string.piglatinize(params[:user_phrase])
        erb :piglatin
    end
end