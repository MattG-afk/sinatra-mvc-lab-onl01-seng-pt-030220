require_relative 'config/environment'

class App < Sinatra::Base
 get '/' do 
    erb :user_input
  end

  post '/piglatinizer' do 
    phrase = PigLatinizer.new
    @user_input = phrase.to_pig_latin(params[:user_phrase])
    erb :piglatinize
  end
end