Algoritmo Ej11
	///Datos de entrada: números que forman la matriz.
	///Datos de salida: si la matriz formó un cuadrado mágico (a suma de sus filas, sus columnas y sus diagonales son idénticas).
	definir i,j,suma,c Como Entero
	definir matriz_a Como Entero
	Definir resp Como Logico
	resp = Falso
	suma=0
	i=0; j=0; c = 0
	
	Dimension matriz_a(3,3)
	
	// Carga de Matriz a 
	Escribir "CUADRO MAGICO"
	Escribir "Ingrese elemento de la matriz de dimensión 3x3:"
	Escribir "Los valores deben estar comprendidos entre 1 y 9"
	Escribir "------------------------------------------------"
	
	para i=0 Hasta 2
		para j=0 Hasta 2
	        Repetir
				Escribir "fila " i+1 " columna: " j+1 " :" Sin Saltar
				leer matriz_a(i,j)
			Mientras Que matriz_a(i,j) <= 0  o matriz_a(i,j) > 9 
		FinPara
	FinPara
	
	Escribir "Matriz ingresada"
	Escribir "----------------"
	
	Para i = 0 Hasta 2 Con Paso 1 Hacer
		Para j = 0 Hasta 2 Con Paso 1 Hacer
				Escribir matriz_a(i,j) "   " Sin Saltar
		FinPara
		Escribir ""    
	FinPara
		
	Cuadro_Magico(matriz_a)
FinAlgoritmo

SubProceso Cuadro_Magico(matriz_a)
	
	Definir i,j Como Entero
	Definir a,b,c,suma Como Entero
	Definir Resp Como Logico 
	a=0 ; b=0; c=0
	Resp = Falso
	
	para i=0 Hasta 2 Hacer
		
		para j=0 hasta 2 Hacer
			a = a + matriz_a(i,j)
			b = b + matriz_a(j,i)
		FinPara
		
		si a = b Entonces
			si c=0 Entonces c=a; finsi	
			si a=b y b=c Entonces
				Resp = Verdadero
				Suma = a
				c=a
			SiNo
				Resp = Falso
			FinSi
		FinSi
		a=0; b=0
		
	FinPara
	
	si resp = Verdadero Entonces
		Escribir "El cuadro es MAGICO" 	
		Escribir "La suma es " suma
	SiNo
		Escribir "El cuadro NO ES MAGICO"
	FinSi
	
FinSubProceso
