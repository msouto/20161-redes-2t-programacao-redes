require "sinatra"
require "rexml/document"
include REXML

get '/' do
	'Hello World!'
end

get '/usuario/:id' do 
	id_usuario = params[:id]
	usuario = $usuarios[id_usuario.to_i]
	if usuario.nil?
		status 404
	end
end
