require 'sinatra'

set :session_secret, "Testing"

get '/' do
    "Hello World"
  end
  
  get '/secret' do
    'Meow meow meow meow'
  end

  get '/test' do
    'Testing again'
  end

get '/random-cat' do 
    @cat_name = ["Amigo", "Oscar", "Viking"].sample
    erb(:index)
end

get '/named-cat' do
  p params
  @name = params[:name]
  erb :index
end