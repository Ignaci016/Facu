Algoritmo Ej02
	///entrada: n valores ingresados por el usuario
	///salida: se muestra un mensaje indicando las posiciones donde se encuentre ese valor o indicar si no se encuentra
	Definir n,val,arreglo,i,cont Como entero
	cont=0
	Escribir "Cuantos valores desea ingresar?: "
	leer n
	Dimension arreglo(n)
	para i=0 Hasta n-1 Hacer
		leer val
		arreglo(i)=val
	FinPara
	Escribir "Qué n° desea buscar?:"
	leer val
	para i=0 Hasta n-1 Hacer
		si arreglo(i)=val Entonces
			Escribir "Existe en el arreglo dentro de la posición: " i
		FinSi
		si arreglo(i)<>val Entonces
			cont=cont+1
		FinSi
	FinPara
	si cont = n Entonces
		Escribir "No existe ese valor en el arreglo"
	FinSi
FinAlgoritmo
