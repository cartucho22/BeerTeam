Feature: Juego Batalla Naval

Scenario: Pantalla con Titulo
	Given voy a la pantalla
	Then debo ver "Batalla Naval"
Scenario: Ingreso Letra A y numero 1, obtengo Agua
	Given voy a la pantalla
	When ingreso Letra "A", 1
	Then debo ver "Agua"



