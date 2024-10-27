Algoritmo Ej07
	Definir num Como Entero
	Definir Nro, Nro2 Como Real
	leer num
	Nro=0
	Nro2=0
	Repetir
		Nro=Nro+(num/2)
		Nro2=Nro2 + ((2^num)/num)
		num=num-1
	Mientras Que num<>0
	Escribir Nro
	Escribir Nro2
FinAlgoritmo
