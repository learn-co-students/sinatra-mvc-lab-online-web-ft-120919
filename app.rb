require_relative 'config/environment'
require_relative 'models/piglatinizer'
class App < Sinatra::Base
    get '/' do 
       erb :user_input
    end 

    post '/' do

        @latinized = PigLatinizer.new(params[:string])
       erb :user_output
    end 
end