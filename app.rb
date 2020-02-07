require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    text_from_user = params[:user_phrase]

    input = PigLatinizer.new
    @text = input.piglatinize(text_from_user)
    #binding.pry
    erb :results
  end
end