class Tablero

	def initialize 
	   @matriz = [0,0,0,0]
	   @barcos = 0
	   @ejex = 0
	   @resultado = ""
	end

	def filas
	   1
	end

	def agregarBarco valor
	   @matriz[valor] = 1
	   @barcos += 1
	end

	def consultarBarco valor
	   @matriz[valor]
	end

	def disparo valor
	case valor.downcase
	when "a"
	   @ejex = 0
	when "b"
	   @ejex = 1
	when "c"
	   @ejex = 2
	when "d"
	   @ejex = 3
	end
	   if @matriz[@ejex] == 1
		@resultado = "Hundido"
	   else
		@resultado = "Agua"
	   end
	@resultado
	end


end


#if @matriz[2] == 0
