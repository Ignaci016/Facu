Algoritmo TP5_E09
	///entrada:un n° entero "n"
	///salida:gráfico de barras de tamaño n
	Definir n, j, k, h Como Entero
	para h=1 Hasta 4 Hacer
		Repetir
			leer n
			si n<1 o n>20 Entonces
				Escribir "El n° ingresado no está entre 1 y 20, ingrese nuevamenrte."
			FinSi
		Mientras Que n<1 o n>20
			Escribir Sin Saltar n ". |"
			para j=1 Hasta n Hacer
				Escribir Sin Saltar"*"
			FinPara
			si h<>4 Entonces
				Escribir ""
				Escribir "   |"
			SiNo
				Escribir ""
				Escribir Sin Saltar "   |"
				para k=0 Hasta h*3 Hacer
					Escribir Sin Saltar"_"
				FinPara
			FinSi
	FinPara
FinAlgoritmo
