require 'sinatra'
require_relative "./lib/tablero.rb"
get '/' do
	@@tablero = Tablero.new
        @@tablero.agregarBarco("C",1)
	@@tablero.agregarBarco("A",4)
	@vidas = @@tablero.consultarVidas
        @barcos = @@tablero.barcosrestantes
    	erb :Batalla
end
post '/disparo' do
    letra = params["letra"]
    numero = params["numero"].to_i
    @resultado = @@tablero.disparo(letra, numero)
    @vidas = @@tablero.consultarVidas
    @barcos = @@tablero.barcosrestantes
    if @vidas > 0
       if @barcos > 0
	  erb :Batalla
       else
	  erb :Ganarjuego
       end
    else
        erb :Finjuego
    end
end
