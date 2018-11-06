require 'sinatra'
require 'sinatra/contrib/all' if development?

require_relative './models/rps_model'
also_reload './models/*'

get '/' do
  erb(:home)
end

get '/gameplay/:play1/:play2' do
  @game_result = RPSGame.check_win(params[:play1], params[:play2])
  erb( :gameplay )
end
