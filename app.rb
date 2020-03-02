require 'sinatra'
set :session_secret, 'super secret'

get '/' do
  "Hello World"
end

get '/secret' do
  "message of my choosing"
end

get '/cat' do
  erb(:index)
end
