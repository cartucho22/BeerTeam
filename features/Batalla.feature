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
	Then debo ver "Fin Juego"

Scenario: gana juego
	Given voy a la pantalla
	When ingreso Letra "C", 1
	Then debo ver "Ganaste el Juego"


