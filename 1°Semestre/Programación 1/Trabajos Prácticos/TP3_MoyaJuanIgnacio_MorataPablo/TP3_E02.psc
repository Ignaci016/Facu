Algoritmo TP3_E02
//	
//	2. Elaborar un algoritmo en el cual se ingrese un número entre 1 y 10 y se muestre su equivalente
//		en romano.
	//Datos de entrada: Número entero entre 1 y 10
	//Datos de salida:Equivalente en romano del número ingresado por el usuario.
	
	Definir NumEntrada Como Entero
	Leer NumEntrada
	
	Segun NumEntrada Hacer
		1:
			Escribir "I"
		2:
			Escribir "II"
		3:
			Escribir "III"
		4:
			Escribir "IV"
		5:
			Escribir "V"
		6:
			Escribir "VI"
		7:
			Escribir "VII"
		8:
			Escribir "VIII"
		9:
			Escribir "IX"
		10:
			Escribir "X"
			
		De Otro Modo:
			Escribir "Ha ingresado un nùmero fuera del intervalo 1 - 10"
	Fin Segun
	
FinAlgoritmo
