/// Entrada: 3 palabras entre 3 y 5 caracteres
/// Salida: Sopa de letras con las palabras ingresadas
Algoritmo Ej14
	Definir palabras, sopaDeLetra Como Caracter
	Definir i, j, filas, columnas Como Entero
	filas = 20
	columnas = 20
	Dimension palabras(3)
	Dimension sopaDeLetra(filas, columnas)
	Para i = 0 Hasta (filas - 1) Con Paso 1 Hacer
		Para j = 0 Hasta (columnas - 1) Con Paso 1 Hacer
			sopaDeLetra(i, j) = " "
		FinPara
	FinPara
	pedirPalabras(palabras)
	ubicarPalabras(palabras, sopaDeLetra, filas, columnas)
	imprimirSopaDeLetra(sopaDeLetra, filas, columnas)
FinAlgoritmo
SubProceso pedirPalabras(palabras)
	Definir i Como Entero
	Definir palabra Como Caracter
	Para i = 0 Hasta 2 Con Paso 1 Hacer
		Hacer
			Escribir "Ingrese una palabra entre 3 y 5 caracteres"
			Leer palabra
			Si Longitud(palabra) < 3 o Longitud(palabra) > 5 o palabra = "" Entonces
				Escribir "La palabra indicada no cumple las condiciones"
			FinSi
		Mientras Que Longitud(palabra) < 3 o Longitud(palabra) > 5 o palabra = ""
		palabras(i) = palabra
	FinPara
FinSubProceso
SubProceso ubicarVertical(palabras, sopaDeLetra, fila)
	Definir i, ultimoIndice, indiceFila, indiceColumna, inicio, valido Como Entero
	Definir palabra Como Caracter
	palabra = palabras(0)
	inicio = 0
	Segun Aleatorio(0, 1) Hacer
		0:	inicio = 0
		1:	inicio = Longitud(palabra) - 1
	FinSegun
	Hacer
		valido = 0
		ultimoIndice = fila - Longitud(palabra)
		indiceFila = Azar(ultimoIndice)
		indiceColumna = Azar(20)
		
		Para i = 0 Hasta (Longitud(palabras(0)) - 1) Con Paso 1 Hacer
			Si sopaDeLetra(indiceFila + i, indiceColumna) >= "a" y sopaDeLetra(indiceFila + i, indiceColumna) <= "z" Entonces
				valido = valido + 1
			FinSi
		FinPara
	Mientras Que valido <> 0
	Para i = 0 Hasta (Longitud(palabras(0)) - 1) Con Paso 1 Hacer
		Si inicio = 0 Entonces
			sopaDeLetra(indiceFila + i, indiceColumna) = SubCadena(palabra, inicio + i, inicio + i)
		SiNo
			sopaDeLetra(indiceFila + i, indiceColumna) = SubCadena(palabra, inicio - i, inicio - i)
		FinSi
	FinPara
FinSubProceso
SubProceso ubicarHorizontal(palabras, sopaDeLetra, columna)
	Definir i, ultimoIndice, indiceFila, indiceColumna, inicio, valido Como Entero
	Definir palabra Como Caracter
	palabra = palabras(1)
	inicio = 0
	Segun Aleatorio(0, 1) Hacer
		0:	inicio = 0
		1:	inicio = Longitud(palabra) - 1
	FinSegun
	Hacer
		valido = 0
		ultimoIndice = columna - Longitud(palabra)
		indiceFila = Azar(20)
		indiceColumna = Azar(ultimoIndice)
		Para i = 0 Hasta (Longitud(palabra) - 1) Con Paso 1 Hacer
			Si sopaDeLetra(indiceFila, indiceColumna + i) >= "a" y sopaDeLetra(indiceFila, indiceColumna + i) <= "z" Entonces
				valido = valido + 1
			FinSi
		FinPara
	Mientras Que valido <> 0
	Para i = 0 Hasta (Longitud(palabra) - 1) Con Paso 1 Hacer
		Si inicio = 0 Entonces
			sopaDeLetra(indiceFila, indiceColumna + i) = SubCadena(palabra, inicio + i, inicio + i)
		SiNo
			sopaDeLetra(indiceFila, indiceColumna + i) = SubCadena(palabra, inicio - i, inicio - i)
		FinSi
	FinPara
FinSubProceso
SubProceso ubicarDiagonal(palabras, sopaDeLetra, fila, columna)
	Definir i, ultimoIndiceF, ultimoIndiceC, indiceFila, indiceColumna, inicio, valido Como Entero
	Definir palabra Como Caracter
	palabra = palabras(2)
	inicio = 0
	Segun Aleatorio(0, 1) Hacer
		0:	inicio = 0
		1:	inicio = Longitud(palabra) - 1
	FinSegun
	Hacer
		valido = 0
		ultimoIndiceF = fila - Longitud(palabra)
		ultimoIndiceC = columna - Longitud(palabra)
		indiceFila = Azar(ultimoIndiceF)
		indiceColumna = Azar(ultimoIndiceC)
		
		Para i = 0 Hasta (Longitud(palabra) - 1) Con Paso 1 Hacer
			Si sopaDeLetra(indiceFila + i, indiceColumna + i) >= "a" y sopaDeLetra(indiceFila + i, indiceColumna + i) <= "z" Entonces
				valido = valido + 1
			FinSi
		FinPara
	Mientras Que valido <> 0
	Para i = 0 Hasta (Longitud(palabra) - 1) Con Paso 1 Hacer
		Si inicio = 0 Entonces
			sopaDeLetra(indiceFila + i, indiceColumna + i) = SubCadena(palabra, inicio + i, inicio + i)
		SiNo
			sopaDeLetra(indiceFila + i, indiceColumna + i) = SubCadena(palabra, inicio - i, inicio - i)
		FinSi
	FinPara
FinSubProceso
SubProceso ubicarPalabras(palabras, sopaDeLetra, fila, columna)
	ubicarVertical(palabras, sopaDeLetra, fila)
	ubicarHorizontal(palabras, sopaDeLetra, columna)
	ubicarDiagonal(palabras, sopaDeLetra, fila, columna)
FinSubProceso
SubProceso imprimirSopaDeLetra(sopaDeLetra, filas, columnas)
	Definir i, j Como Entero
	Para i = 0 Hasta (filas - 1) Con Paso 1 Hacer
		Para j = 0 Hasta (columnas - 1) Con Paso 1 Hacer
			Escribir Sin Saltar (sopaDeLetra(i, j)) " "
		FinPara
		Escribir ""
	FinPara
FinSubProceso


