///Entrada:Se ingresa palabra por palabra a enviar por el correo
///Salida:El mensaje del telegrama a enviar y el costo
Algoritmo Ej05
	Definir palabras Como Caracter
	Definir nmensj Como Entero
	Escribir "Ingrese la cantidad de palabras del mensaje"
	leer nmensj
	Dimension palabras(nmensj)
	vector(palabras, nmensj)
	recortar(palabras, nmensj)
	costo(palabras, nmensj)
FinAlgoritmo
SubAlgoritmo vector(palabras, nmensj)
	Definir mensj Como Caracter
	Definir i Como Entero
	Escribir "Ingrese palabra por palabra el mensaje"
	para i = 0 Hasta nmensj - 1 Hacer
		leer mensj
		palabras(i) = mensj		
	FinPara
FinSubAlgoritmo
SubAlgoritmo recortar(palabras, nmensj)
	Definir i Como Entero
	para i = 0 Hasta nmensj - 1 Hacer
		si Longitud(palabras(i)) >= 5 Entonces
			palabras(i) = concatenar(Subcadena(palabras(i), 0, 4), "@") 
			Escribir palabras(i), " " Sin Saltar
		SiNo
			si palabras(i) = "." Entonces
				palabras(i) = "STOP"
				Escribir palabras(i), " " Sin Saltar
			SiNo
				SI palabras(nmensj - 1) = "." Entonces
					palabras(nmensj - 1) = "STOPSTOP"
				SiNo
					SI palabras(nmensj - 1) = " " Entonces 
						Escribir "STOPSTOP"
					FinSi
					Escribir palabras(i), " " Sin Saltar
				FinSi
			FinSi
		FinSi
	FinPara
	Escribir ""
FinSubAlgoritmo
SubAlgoritmo costo(palabras, nmensj)
	definir costoL, costoC, costoT, i Como Entero
	costoT = 0
	costoC = 1
	costoL = 2
	para i = 0 Hasta nmensj - 1 Hacer
		si Longitud(palabras(i)) > 5 Entonces
			costoT = costoT + costoL
		SiNo 
			costoT = costoT + costoC
		FinSi
	FinPara
	Escribir "El costo final es $"  costoT
FinSubAlgoritmo