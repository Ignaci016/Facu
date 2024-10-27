/// Entrada: El programa lo genera gastos de entrada.
/// Salida: Un mensaje con los costos máximos y mínimos de cada máquina y proceso.
Algoritmo Ej13
	Definir matriz, maximosMaquinas, minimosMaquinas, maximosProcesos, minimosProcesos, filas, columnas, punteroProcesoMax, punteroProcesoMin, punteroMaquinaMax, punteroMaquinaMin, i, j Como Entero
	filas = 6
	columnas = 5
	Dimension matriz[filas, columnas]
	Dimension maximosMaquinas[6]
	Dimension minimosMaquinas[6]
	Dimension punteroProcesoMax[6]
	Dimension punteroProcesoMin[6]
	Dimension maximosProcesos[5]
	Dimension minimosProcesos[5]
	Dimension punteroMaquinaMax[5]
	Dimension punteroMaquinaMin[5]
	matriz(0,0) = 6
	matriz(0,1) = 5
	matriz(0,2) = 9
	matriz(0,3) = 19
	matriz(0,4) = 11
	matriz(1,0) = 45
	matriz(1,1) = 23
	matriz(1,2) = 21
	matriz(1,3) = 17
	matriz(1,4) = 30
	matriz(2,0) = 15
	matriz(2,1) = 7
	matriz(2,2) = 23
	matriz(2,3) = 25
	matriz(2,4) = 2
	matriz(3,0) = 75
	matriz(3,1) = 26
	matriz(3,2) = 38
	matriz(3,3) = 49
	matriz(3,4) = 19
	matriz(4,0) = 2
	matriz(4,1) = 15
	matriz(4,2) = 76
	matriz(4,3) = 1
	matriz(4,4) = 45
	matriz(5,0) = 92
	matriz(5,1) = 82
	matriz(5,2) = 4
	matriz(5,3) = 20
	matriz(5,4) = 13
	calcularMaximosMaquinas(matriz, filas, columnas, maximosMaquinas, punteroProcesoMax)
	calcularMinimosMaquinas(matriz, filas, columnas, minimosMaquinas, punteroProcesoMin)
	calcularMaximosProcesos(matriz, filas, columnas, maximosProcesos, punteroMaquinaMax)
	calcularMinimosProcesos(matriz, filas, columnas, minimosProcesos, punteroMaquinaMin)
	Escribir "Maquinas"
	Escribir ""
	Para i = 0 Hasta 5 Hacer
		Escribir "El costo más alto de la máquina " i + 1 " es de: " maximosMaquinas(i) ". (Perteneciente al proceso: " deNumeroACaracter(punteroProcesoMax(i) + 1) " )"
	FinPara
	Escribir ""
	Para i = 0 Hasta 5 Hacer
		Escribir "El costo más alto de la máquina " i + 1 " es de: " minimosMaquinas(i) ". (Perteneciente al proceso: " deNumeroACaracter(punteroProcesoMin(i) + 1) " )"
	FinPara
	Escribir "Procesos"
	Para i = 0 Hasta 4 Hacer
		Escribir "El costo más bajo del proceso " deNumeroACaracter(i + 1) " es de: " minimosProcesos(i) ". (Perteneciente a la máquina " punteroMaquinaMin(i) + 1 " )"
	FinPara
	
	Escribir ""
	Para i = 0 Hasta 4 Hacer
		Escribir "El costo más alto del proceso " deNumeroACaracter(i + 1) " es de: " maximosProcesos(i) ". (Perteneciente a la máquina " punteroMaquinaMax(i) + 1 " )"
	FinPara
FinAlgoritmo
SubProceso mostrarMatriz(matriz, filas, columnas)
	Definir i, j Como Entero;
	Para i = 0 Hasta filas - 1 Con Paso 1 Hacer
		Para j = 0 Hasta columnas - 1 Con Paso 1 Hacer
			Escribir Sin Saltar "| " matriz[i,j] " |"
		FinPara
		Escribir ""
	FinPara
FinSubProceso
SubProceso calcularMaximosMaquinas (matriz, filas, columnas, maximosMaquinas, punteroProcesoMax)
	Definir i, j, valorAuxiliar, contador Como Entero
	valorAuxiliar = -1000
	contador = 0
	Para i = 0 Hasta filas - 1 Hacer
		Para j = 0 Hasta columnas - 1 Hacer
			si matriz[i,j] > valorAuxiliar Entonces
				valorAuxiliar = matriz[i,j]
				contador = j
			FinSi
		FinPara
		maximosMaquinas(i) = valorAuxiliar
		valorAuxiliar = -1000
		punteroProcesoMax(i) = contador
		contador = 0
	FinPara
FinSubProceso
SubProceso calcularMinimosMaquinas (matriz, filas, columnas, minimosMaquinas, punteroProcesoMin)
	Definir i, j, valorAuxiliar, contador Como Entero
	valorAuxiliar = 1000
	Para i = 0 Hasta filas - 1 Hacer
		Para j = 0 Hasta columnas - 1 Hacer
			si matriz[i,j] < valorAuxiliar Entonces
				valorAuxiliar = matriz[i,j]
				contador = j
			FinSi
		FinPara
		minimosMaquinas(i) = valorAuxiliar
		valorAuxiliar = 1000
		punteroProcesoMin(i) = contador
		contador = 0
	FinPara
FinSubProceso
SubProceso calcularMaximosProcesos (matriz, filas, columnas, maximosProcesos, punteroMaquinaMax)
	Definir i, j, valorAuxiliar, contador Como Entero
	valorAuxiliar = -1000
	contador = 0
	Para i = 0 Hasta columnas - 1 Hacer
		Para j = 0 Hasta filas - 1 Hacer
			si matriz[j,i] > valorAuxiliar Entonces
				valorAuxiliar = matriz[j,i]
				contador = j
			FinSi
		FinPara
		maximosProcesos(i) = valorAuxiliar
		valorAuxiliar = -1000
		punteroMaquinaMax(i) = contador
		contador = 0
	FinPara
FinSubProceso
SubProceso calcularMinimosProcesos (matriz, filas, columnas, minimosProcesos,punteroMaquinaMin)
	Definir i, j, valorAuxiliar, contador Como Entero
	valorAuxiliar = 1000
	contador = 0
	Para i = 0 Hasta columnas - 1 Hacer
		Para j = 0 Hasta filas - 1 Hacer
			si matriz[j,i] < valorAuxiliar Entonces
				valorAuxiliar = matriz[j,i]
				contador = j
			FinSi
		FinPara
		minimosProcesos(i) = valorAuxiliar
		valorAuxiliar = 1000
		punteroMaquinaMin(i) = contador
		contador = 0
	FinPara
FinSubProceso
Funcion letra = deNumeroACaracter (num)
	Definir letra Como Caracter
	Segun num Hacer
		1: letra = 'A'
		2: letra = 'B'
		3: letra = 'C'
		4: letra = 'D'
		5: letra = 'E'
	FinSegun
FinFuncion





























