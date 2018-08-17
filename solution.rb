require 'sinatra'

get '/' do
  @nombre = "desconocido"
  erb :index
end
get '/:nombre' do
  if :nombre.empty?
    @nombre = "desconocido"
  else
    @nombre = params[:nombre].capitalize
  end
  erb :index
end
