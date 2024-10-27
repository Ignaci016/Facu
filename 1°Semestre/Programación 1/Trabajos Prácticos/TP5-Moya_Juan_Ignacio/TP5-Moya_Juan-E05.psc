Algoritmo TP5_E05
	///entrada: altura escalera
	///salida: escalera numerica hasta el n° ingresado(la altura)
	Definir i, j Como Entero
	Definir n Como Real
	Escribir "Ingrese la altura de la escalera(n° entero)"
	Repetir
		leer n
		si n-trunc(n)<>0 Entonces
			Escribir "No se ingresó un n° entero, ingrese nuevamente."
		FinSi
	Mientras Que n-trunc(n)<>0
	para i=1 Hasta n Hacer
		para j=1 Hasta i Hacer
			Escribir Sin Saltar j
		FinPara
		Escribir ""
	FinPara
FinAlgoritmo
