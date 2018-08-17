require 'sinatra'

get '/' do
  @nombre = "desconocido"
  erb :index
end
get '/makers/' do
  @nombre = "desconocido"
  erb :index
end
get '/makers/:nombre' do
  @nombre = params[:nombre].capitalize
  erb :index
end
