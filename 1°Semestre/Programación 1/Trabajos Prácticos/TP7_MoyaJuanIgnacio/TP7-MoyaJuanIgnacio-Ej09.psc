Algoritmo Ej09
	
	Definir n,m, matriz, pares, impares Como Entero
	pares = 0
	impares = 0
	pedir_tamaño(n,m)
	
	Dimension matriz(n,m)
	
	ingresar_elementos(matriz,n,m)
	
	espar(matriz,n,m, pares, impares)
	
	Escribir ""
	Escribir "RESULTADOS"
	Escribir "La suma de los números pares es: " pares
	Escribir "La suma de los números impares es: " impares
	Escribir ""

	
FinAlgoritmo

SubAlgoritmo pedir_tamaño(n Por Referencia, m Por Referencia)
	
	Escribir "Ingrese la cantidad de filas de su matriz"
	leer n
	Escribir "Ingrese la cantidad de columnas de su matriz"
	leer m
	
FinSubAlgoritmo

SubAlgoritmo ingresar_elementos(matriz, n, m) 
	
	Definir i, j Como Entero
	
	Para i = 0 Hasta n - 1 Hacer
		
		para j = 0 Hasta m - 1 Hacer
			
			Escribir "Ingrese el elemento: " i + 1 " x " j + 1
			leer matriz(i,j)
			
		FinPara
		
	FinPara
	
FinSubAlgoritmo

SubAlgoritmo espar(matriz,n,m, pares Por Referencia, impares Por Referencia)
	
	Definir i, j Como Entero
	
	Para i = 0 Hasta n - 1 Hacer
		
		para j = 0 Hasta m - 1 Hacer
			
			si matriz(i,j) mod 2 = 0  Entonces
				
				pares = pares + matriz(i,j)
			SiNo
				
				impares = impares + matriz(i,j)
				
			FinSi
		FinPara
		
	FinPara
	
FinSubAlgoritmo
