Algoritmo TP3_E08
	//Entradas: Operacion a realizar, primer n�mero y segundo n�mero
	//Procesamiento: realizar la operaci�n requerida a los n�meros ingresados
	//Salida: Resultado de la operaci�n realizada
	
	
	Definir Operacion Como Caracter
	Definir Num_uno, Num_dos, Resultado Como Entero
	
	Escribir "Ingrese la operaci�n a realizar(S(suma),R(resta),M(multiplicaci�n),D(divisi�n)):"
	Leer Operacion
	
	Operacion = Mayusculas(Operacion)
	
	Escribir "Ingrese el primer n�mero"
	Leer Num_uno
	
	Escribir "Ingrese el segundo n�mero"
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
