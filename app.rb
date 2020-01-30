require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input 
  end #do

  post '/piglatinize' do
    #Create instance of PL class to convert string into piglatin
    p = PigLatinizer.new
    @pig_word = p.piglatinize(params[:user_phrase])

    erb :result 
  end #do

end #class