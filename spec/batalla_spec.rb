require_relative "../lib/tablero.rb"
describe "Juego batalla Naval" do

	it "Tablero de una fila" do

		tablero = Tablero.new
		tablero.filas.should == 1		
		
	end

	it "Ubicar un barco" do

		tablero = Tablero.new
		tablero.agregarBarco 2		
		tablero.consultarBarco(2).should == 1
	end

	it "Disparo al agua" do

		tablero = Tablero.new
		tablero.agregarBarco 2		
		tablero.disparo("a").should == "a"
	end

	it "Disparo al barco" do

		tablero = Tablero.new
		tablero.agregarBarco 2		
		tablero.disparo("c").should == "h"
	end

end
