Algoritmo Ej06
	Definir num, num2 como entero
	Definir div Como Real
	Leer num
	leer num2
	div=0
	si num>1 y num2>1 Entonces
		Repetir
			num=num-num2
			div=div+1
		Mientras Que num<>0
		Escribir "resto: " num
		Escribir "cociente: " div
	FinSi
FinAlgoritmo
