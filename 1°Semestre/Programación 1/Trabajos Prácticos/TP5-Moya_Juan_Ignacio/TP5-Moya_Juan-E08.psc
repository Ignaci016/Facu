Algoritmo TP5_E08
	///entrada:un n° entero "n"
	///salida:cuadrado de asteriscos te tamaño n * lado
	Definir n, i, j Como Entero
	leer n
	para i=1 Hasta n Hacer
		para j=1 Hasta n Hacer
			si i=1 o i=n o j=1 o j= n Entonces
				Escribir Sin Saltar " * "
			SiNo
				Escribir Sin Saltar "   "
			FinSi
		FinPara
		Escribir "   "
	FinPara
FinAlgoritmo
