require 'sinatra'
require_relative "./lib/tablero.rb"
get '/' do
	@@tablero = Tablero.new
        @@tablero.agregarBarco("C",1)
    	erb :Batalla
end
post '/disparo' do
    letra = params["letra"]
    numero = params["numero"].to_i
    @resultado = @@tablero.disparo(letra, numero)
    @vidas = @@tablero.consultarVidas
    if @vidas > 0
	erb :Batalla
    else
        erb :Finjuego
    end
end
