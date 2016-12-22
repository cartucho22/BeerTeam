require_relative "../lib/tablero.rb"
describe "Juego batalla Naval" do

	it "Tablero de una fila" do

		tablero = Tablero.new
		tablero.filas.should == 1		
		
	end

	it "Ubicar un barco" do

		tablero = Tablero.new
		tablero.agregarBarco("c",1)		
		tablero.consultarBarco("c",1).should == 1
	end

	it "Disparo al agua" do

		tablero = Tablero.new
		tablero.agregarBarco("c",1)	
		tablero.disparo("a",1).should == "Agua"
	end

	it "Disparo al barco" do

		tablero = Tablero.new
		tablero.agregarBarco("c",1)		
		tablero.disparo("c",1).should == "Hundido"
	end

	it "Descontar una vida" do

		tablero = Tablero.new
		tablero.agregarBarco("c",1)		
		tablero.disparo("a",1).should == "Agua"
		tablero.consultarVidas.should == 3
	end

	it "Descontar un barco" do

		tablero = Tablero.new
		tablero.agregarBarco("c",1)		
		tablero.disparo("c",1).should == "Hundido"
		tablero.consultarBarcos.should == 0
	end

end
