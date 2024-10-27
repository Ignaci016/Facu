Algoritmo TP6_06

	///Entrada: 
	//10 triángulos que se intercalen entre los que tienen asteriscos y los que tienen equis.
	///Salida: 
	//10 triángulos impresos en pantalla.
	
	Definir triangulo1, triangulo2, k Como Entero
	
	triangulo1 = 6
	triangulo2 = 7
	
	Para k = 1 Hasta 10 
		
		Escribir "Triangulo número ", k,"."
		
		Si k Mod 2<>0 
			
			triangulos6(triangulo1)
			
		SiNo
			
			triangulos7(triangulo2)
			
		FinSi
	FinPara
	
	
FinAlgoritmo

Funcion triangulos6(triangulo1)
	
	Definir i, j Como Enteros
	
	Para i = 1 Hasta  triangulo1 
		
		Para j = 1 hasta i 
			
			Escribir Sin Saltar "*"
			
		FinPara
		
		Escribir ""
	FinPara
	
FinFuncion

Funcion triangulos7(triangulo2)
	
	Definir i, j Como Entero
	
	Para i = 1 Hasta  triangulo2
		
		para j = 1 hasta i
			
			Escribir Sin Saltar "X"
			
		FinPara
		
		Escribir ""
		
	FinPara
	
FinFuncion
	