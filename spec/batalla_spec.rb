require_relative "../lib/tablero.rb"
describe "Juego batalla Naval" do

	it "Tablero de una fila" do

		tablero = Tablero.new
		tablero.filas.should == 1		
		
	end


end
