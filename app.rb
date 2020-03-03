require 'sinatra'
set :session_secret, 'super secret'

get '/' do
  "Hello World"
end

get '/secret' do
  "message of my choosing"
end

get '/random-scrat' do
  @caption = ["found", "stole", "definitely did not make myself"].sample
  erb(:index)
end

get '/named-scrat' do
  p params
  @caption = params[:caption]
  erb(:index)
end

get '/dog' do
  erb
end
