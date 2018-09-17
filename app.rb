require 'sinatra'

set :session_secret, 'super secret'

get '/' do
  "Hello World"
end

get '/secret' do
  erb 'hello <% 2 + 2 %>'
end

get '/cat' do
  @rand_name = %w(Amigo Oscar Viking).sample
  erb(:index)
end
