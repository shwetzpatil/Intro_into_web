require 'sinatra'

set :session_secret, 'super secret'

get '/' do
  "Hello World"
end

get '/secret' do
  erb 'hello <% 2 + 2 %>'
end

get '/random-cat' do
  @name = %w(Amigo Oscar Viking).sample
  erb(:index)
end

get '/named-cat' do
  p params
  @name = params[:name]
  erb(:index)
end
