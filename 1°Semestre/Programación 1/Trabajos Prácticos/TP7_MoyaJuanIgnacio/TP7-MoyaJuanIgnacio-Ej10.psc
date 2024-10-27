/// Datos de entrada: No disponemos de datos de entrada.
/// Datos de salida: Es el resultado de la multiplicación de 2 matrices de orden 3.

Algoritmo Ej10
	
	Definir matriz1, matriz2, matrizResultado, orden Como Entero
	
	orden = 3;
	
	Dimension matriz1[orden, orden]
	Dimension matriz2[orden, orden]
	Dimension matrizResultado[orden, orden]
	
	rellenarMatrizAleatoria(matriz1, orden, orden)
	Escribir "Matriz 1:"
	mostrarMatriz(matriz1, orden, orden)
	rellenarMatrizAleatoria(matriz2, orden, orden)
	Escribir ""
	Escribir "Matriz 2:"
	mostrarMatriz(matriz2, orden, orden)
	
	multiplicarMatricesCuadradas(matriz1, matriz2, matrizResultado, orden)
	Escribir ""
	Escribir "resultado: "
	mostrarMatriz(matrizResultado, orden, orden)
	
FinAlgoritmo

SubProceso mostrarMatriz(matriz, filas, columnas)
	
	Definir i, j Como Entero;
	
	Para i = 0 Hasta filas - 1 Con Paso 1 Hacer
		
		Para j = 0 Hasta columnas - 1 Con Paso 1 Hacer
			
			Escribir Sin Saltar "| " matriz[i,j] " |"
			
		FinPara
		
		Escribir "";
		
	FinPara
	
FinSubProceso

SubProceso rellenarMatrizAleatoria (matriz, fila, columna)
	
	Definir i, j Como Entero
	
	Para i = 0 Hasta fila - 1 Hacer
		
		Para j = 0 Hasta columna - 1 Hacer
			
			matriz[i,j] = Aleatorio(1,9)
			
		FinPara
		
	FinPara
	
FinSubProceso

SubProceso multiplicarMatricesCuadradas (matriz1, matriz2, matrizResultado, orden)
	
	Definir i, j, sum Como Entero
	
	sum = 0
	
	Para i = 0 Hasta orden - 1 Hacer
		
		sum = 0;
		
		Para j = 0 Hasta orden - 1 Hacer
			
			matrizResultado[i,j] = matriz1[i,0] * matriz2[0,j] + matriz1[i,1] * matriz2[1,j] + matriz1[i,2] * matriz2[2,j];
			
		FinPara
		
	FinPara
	
FinSubProceso



























