class Tablero

	def initialize 
	   @matriz = [[0,0,0,0],[0,0,0,0],[0,0,0,0],[0,0,0,0]]
	   @matrizDisparos = [["#ffffff","#ffffff","#ffffff","#ffffff"],["#ffffff","#ffffff","#ffffff","#ffffff"],["#ffffff","#ffffff","#ffffff","#ffffff"],["#ffffff","#ffffff","#ffffff","#ffffff"]]
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

	def consultarMatrizDisparos x, y
	   @matrizDisparos[x][y]
	end

	def consultarMatrizBarcos x, y
	   if @matrizBarcos[x][y] == 1
		"#ff0000"
	   else
		"#99ccff"
	   end
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
		@matrizDisparos[@ejex][y-1] = "#ff0000"
		@resultado = "Hundido"
		@barcos -= 1
	   else
		@matrizDisparos[@ejex][y-1] = "#99ccff"
		@resultado = "Agua"
		@vidas -= 1
	   end
	   @resultado
	end


end

