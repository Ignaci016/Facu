Algoritmo TP5_E04
	///entrada:sueldo base, cant. empleados, ventas realizadas por cada vendedor seg�n el d�a
	///salida:total a pagar a cada vendedor seg�n sueldo base y seg�n comisiones
	Definir n, vent, ventT, i, j Como Entero
	Definir base Como Real
	Escribir "ingrese el sueldo base:"
	leer base
	Escribir "ingrese la cant. de empleados:"
	leer n
	ventT=0
	Para j=1 Hasta n Hacer
		Para i=1 Hasta 5 Hacer
			Escribir "Cu�nto vendi� el vendedor " j " el d�a " i "?"
			leer vent
			ventT=ventT+vent
		FinPara
		Escribir "Al empleado n�" j "Deber� pagarle $" base " de base + $" base*0.1*ventT " Por comisi�nes totales, en total: $" base + base*(ventT*0.1)
		ventT=0
	FinPara
FinAlgoritmo
