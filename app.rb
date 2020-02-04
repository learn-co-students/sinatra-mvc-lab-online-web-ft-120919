require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'
require 'pry'
# binding.pry

class App < Sinatra::Base
    get '/' do
        erb :user_input
    end

    post '/piglatinize' do
        @sentence = params[:user_phrase]
        erb :latinizer
    end
end