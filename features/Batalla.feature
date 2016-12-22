Feature: Juego Batalla Naval

Scenario: Pantalla con Titulo
	Given voy a la pantalla
	Then debo ver "Batalla Naval"

Scenario: Ingreso Letra A y numero 1, obtengo Agua
	Given voy a la pantalla
	When ingreso Letra "A", 1
	Then debo ver "Agua"

Scenario: pifia 4
	Given voy a la pantalla
	When ingreso Letra "A", 1
	And ingreso Letra "A", 2
	And ingreso Letra "B", 2
	And ingreso Letra "C", 2
	Then debo ver "FIN DEL JUEGO.. PERDISTE"

Scenario: gana juego
	Given voy a la pantalla
	When ingreso Letra "C", 1
	And ingreso Letra "A", 4
	Then debo ver "GANASTE EL JUEGO"


