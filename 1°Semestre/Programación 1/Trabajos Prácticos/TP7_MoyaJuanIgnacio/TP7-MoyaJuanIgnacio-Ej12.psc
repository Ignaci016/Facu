///entrada: matriz
///salida: punto de silla (si es que existe).

Algoritmo Ej12

	Definir matriz Como Real
	Definir menorFila,mayorColumna,puntoSilla Como Real
	Definir n,m Como Entero
	
	Escribir "Ingrese la dimensión de la matriz: "
	Leer n,m;
	
	Dimension matriz(n,m),menorFila(n),mayorColumna(m)
	
	llenarMatriz(matriz,n,m)
	
	puntoSilla = posicionPuntoSilla(matriz,menorFila,mayorColumna,n,m)
	
FinAlgoritmo


SubProceso llenarMatriz(matriz,n,m)
	
	Definir i,j Como Entero
	
	Para i<-0 Hasta n-1 Hacer
		Para j<-0 Hasta m-1 Hacer
			Leer matriz(i,j)
		FinPara
	FinPara
	
	mostrarMatriz(matriz,n,m)
	
FinSubProceso

SubProceso mostrarMatriz (matriz,n,m)
	
	Definir i,j Como Entero;
	
	Para i<-0 Hasta n-1 Hacer
		Para j<-0 Hasta m-1 Hacer
			Escribir Sin Saltar matriz(i,j) , " "
		FinPara
		Escribir ""
	FinPara
	Escribir ""
	
FinSubProceso

Funcion puntoSilla <- posicionPuntoSilla (matriz,menorFila,mayorColumna,n,m)
	
	Definir i,j,puntoSilla Como Entero
	
	Para i<-0 Hasta n-1 Hacer
		menorFila(i) = 9999
	FinPara
	
	Para j<-0 Hasta m-1 Hacer
		mayorColumna(j) = -9999
	FinPara
	
	Para i<-0 Hasta n-1 Hacer
		Para j<-0 Hasta m-1 Hacer
			
			si (matriz(i,j) > mayorColumna(j)) Entonces
				mayorColumna(j) = matriz(i,j)
			FinSi
			
			si (matriz(i,j) < menorFila(i)) Entonces
				menorFila(i) = matriz(i,j)
			FinSi
			
		FinPara
	FinPara
	
	Para i<-0 Hasta n-1 Hacer
		Para j<-0 Hasta m-1 Hacer
			si (menorFila(i) == mayorColumna(j)) Entonces
				Escribir "Punto de silla en (" , i , "," , j , ")"
			FinSi
		FinPara
	FinPara
	
FinFuncion
	