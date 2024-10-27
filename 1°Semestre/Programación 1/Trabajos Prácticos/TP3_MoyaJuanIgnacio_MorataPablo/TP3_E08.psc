Algoritmo TP3_E08
	//Entradas: Operacion a realizar, primer número y segundo número
	//Procesamiento: realizar la operación requerida a los números ingresados
	//Salida: Resultado de la operación realizada
	
	
	Definir Operacion Como Caracter
	Definir Num_uno, Num_dos, Resultado Como Entero
	
	Escribir "Ingrese la operación a realizar(S(suma),R(resta),M(multiplicación),D(división)):"
	Leer Operacion
	
	Operacion = Mayusculas(Operacion)
	
	Escribir "Ingrese el primer número"
	Leer Num_uno
	
	Escribir "Ingrese el segundo número"
	Leer Num_dos
	
	Segun Operacion Hacer
		"S": 
			Resultado = Num_uno + Num_dos
		"R":
			Resultado = Num_uno - Num_dos
		"M" o "P":
			Resultado = Num_uno * Num_dos
		"D":
			Resultado = Num_uno / Num_dos
	FinSegun
	
	Escribir "Su resultado es: " Resultado
	
	
	
	
FinAlgoritmo
