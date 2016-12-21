require 'sinatra'
require_relative "./lib/tablero.rb"
get '/' do
	@@tablero = Tablero.new
        @@tablero.agregarBarco(2)
    	erb :Batalla
end
post '/disparo' do
    letra = params["letra"]
    numero = params["numero"]
    @resultado = @@tablero.disparo(letra,numero)
    erb :Batalla
end
