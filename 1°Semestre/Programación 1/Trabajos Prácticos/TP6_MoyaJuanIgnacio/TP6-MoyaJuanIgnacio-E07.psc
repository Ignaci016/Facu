Algoritmo TP6_07
	
	///Entrada: 
	//2 n�meros.
	
	///Salida: 
	//el programa indica si son amigos o no.
	
	Definir num1,num2 Como Entero
	Definir confirmar Como Cadena
	
	Repetir
		
		Escribir "Ingrese el primer n�mero."
		Leer num1
		
		Escribir "Ingrese el segundo n�mero."
		Leer num2
		
		amigos(num1, num2)
		
		Escribir "�Desea utilizar el programa de nuevo?"
		Escribir "	Opciones:"
		Escribir "		1 S (si)  		"
		Escribir "		2 N (no)		"
		leer confirmar	
		
		confirmar = Mayusculas(confirmar)
		
		mientras confirmar <> "S" y confirmar <> "N"
			
			Escribir "Opci�n no v�lida, por favor ingrese una nueva opci�n que sea v�lida."
			Escribir "Recuerde:"
			Escribir "	Opciones:"
			Escribir "		1 S (si)  		"
			Escribir "		2 N (no)		"
			leer confirmar	
			
			confirmar = Mayusculas(confirmar)
			
		FinMientras
		
	Mientras Que confirmar <> "N"
	
FinAlgoritmo

Funcion amigos(num1,num2)
	
	Definir i,j,co1,co2 Como Enteros
	
	co1=0
	co2=0
	
	Para i = 2 Hasta num1
		
		Si num1 Mod i = 0 
			
			co1 = co1+(num1/i)	
			
		FinSi
	FinPara

	Para j = 2 Hasta num2
		
		Si num2 Mod j = 0
			
			co2 = co2 + (num2 / j)
			
		FinSi
		
	FinPara
	
	Si co1 = num2 y co2 = num1
		
		Escribir "Los n�meros son amigos."
		
	SiNo
		
		Escribir "Los n�meros no son amigos."
		
	FinSi
	
FinFuncion
	