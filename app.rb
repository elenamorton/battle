require 'sinatra/base'


class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    "Hello Battle!"
    erb :index
  end

  post '/names' do
    p params
    session[:player_1_name] = params[:player_1_name]
    session[:player_2_name] = params[:player_2_name]
    redirect '/play'
  end

  get '/play' do
    @player_2_hit_points = 100
    @player_1_name = session[:player_1_name]
    @player_2_name = session[:player_2_name]
    erb :play
  end

  run! if app_file == $0

end
