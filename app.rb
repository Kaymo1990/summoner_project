require 'sinatra/base'

class Dab < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
  $summoner_name = params[:summoner]
  redirect '/dabtime'
  end

  get '/dabtime' do
    @summoner_name = $summoner_name
    erb :dabberoo
  end


end
