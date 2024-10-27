Algoritmo Ej05
	Definir val,val2 Como Real
	Definir var Como Entero
	var=0
	val=0
	val2=0
	Repetir
		leer val
		leer val2
		si val=val2 Entonces
			var=var+1
			Escribir "Los valores son iguales"
		sino
			si val>val2 Entonces
				Escribir "El primer valor es mayor al segundo"
			SiNo
				Escribir "El segundo valor es mayor al primero"
			FinSi
		FinSi
	Mientras Que var<>3
FinAlgoritmo
