Algoritmo TP5_E02
	Definir num, i, nimpar, mul7, pro3, cant3 como entero
	nimpar=0
	pro3=0
	cant3=0
	mul7=0
	i=1
	Escribir "ingrese 10 números"
	Repetir
		Escribir "ingrese el n° " i
		leer num
		si num > 0 Entonces
			si num mod 2 <> 0 Entonces
				nimpar=nimpar+1
			FinSi
			si num mod 7 = 0 Entonces
				mul7=mul7+num
			FinSi
			si num mod 3=0 Entonces
				pro3=pro3+num
				cant3=cant3+1
			FinSi
		SiNo
			Escribir "El número ingresado no es positivo(No se va a considerar)"
			i=i-1
		FinSi
		i=i+1
	Mientras que i<> 11
	si nimpar=0 Entonces
		Escribir "No se ingresó ningún n°impar"
	SiNo
		Escribir "Se ingresaron " nimpar " impares, "
	FinSi
	si mul7<>0 Entonces
		Escribir "La suma de los múltiplos de 7 ingresados es: " mul7
	SiNo
		Escribir "No se ingresaron múltiplos de 7"
	FinSi
	si pro3=0 Entonces
		Escribir "no se ingresaron multiplos de 3"
	sino
		Escribir "El promedio de los múltiplos de 3 ingresados es: " pro3/cant3
	FinSi
FinAlgoritmo
