require 'sinatra'
require_relative "./lib/tablero.rb"
get '/' do
	@@tablero = Tablero.new
    	erb :Batalla
end
