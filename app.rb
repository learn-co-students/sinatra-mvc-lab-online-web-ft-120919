require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'


class App < Sinatra::Base

    get '/' do 
        erb :user_input
    end

    post '/piglatinize' do 
        @analyzed_text = TextAnalyzer.new(params[:user_text])


    end

   
end