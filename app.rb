require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    input = PigLatinizer.new
    @result = input.piglatinize(params[:user_phrase])
    erb :translation
  end

end