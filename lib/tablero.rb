class Tablero

	def initialize 
	   @matriz = [[0,0,0,0],[0,0,0,0],[0,0,0,0],[0,0,0,0]]
	   @barcos = 0
	   @ejex = 0
	   @resultado = ""
	   @vidas = 4
	end

	def filas
	   1
	end

	def consultarVidas
	   @vidas
	end

	def barcosrestantes
	   @barcos
	end

	def agregarBarco x, y
		case x.downcase
		when "a"
		   @ejex = 0
		when "b"
		   @ejex = 1
		when "c"
		   @ejex = 2
		when "d"
		   @ejex = 3
		end
	   @matriz[@ejex][y-1] = 1
	   @barcos += 1
	end

	def consultarBarco x, y
	   	case x.downcase
		when "a"
		   @ejex = 0
		when "b"
		   @ejex = 1
		when "c"
		   @ejex = 2
		when "d"
		   @ejex = 3
		end
	   @matriz[@ejex][y-1]
	end

	def disparo x, y
		case x.downcase
		when "a"
		   @ejex = 0
		when "b"
		   @ejex = 1
		when "c"
		   @ejex = 2
		when "d"
		   @ejex = 3
		end
	   if @matriz[@ejex][y-1] == 1
		@resultado = "Hundido"
		@barcos -= 1
	   else
		@resultado = "Agua"
		@vidas -= 1
	   end
	   @resultado
	end


end

