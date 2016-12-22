class Tablero

	def initialize 
	   #@matriz = [0,0,0,0][0,0,0,0]
	   @matriz = [[0,0,0,0],[0,0,0,0],[0,0,0,0],[0,0,0,0]]
	   @barcos = 0
	   @ejex = 0
	   @resultado = ""
	end

	def filas
	   1
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
	   else
		@resultado = "Agua"
	   end
	   @resultado
	end


end

