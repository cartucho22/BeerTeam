class Tablero

	def initialize 
	   @matriz = [0,0,0,0]
	end

	def filas
	   1
	end

	def agregarBarco valor
	   @matriz[valor] = 1
	end

	def consultarBarco valor
	   @matriz[valor]
	end


end


#if @matriz[2] == 0
