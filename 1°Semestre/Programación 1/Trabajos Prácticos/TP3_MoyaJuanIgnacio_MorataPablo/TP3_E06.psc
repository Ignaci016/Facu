Algoritmo TP3_E06
	
	//entradas: peso y altura de la persona 
	//procesamiento: calcular el IMC y establecer en que rango de diagn�stico se encuentra la persona
	//salida: escribir el diagn�stico seg�n el IMC correspondiente
	
	Definir Peso Como Real
	Definir Altura Como Real
	Definir IMC Como Real
	Escribir "Ingrese el peso de la persona en kilogramos"
	leer Peso
	Escribir "Ingrese la altura de la persona en metros"
	Leer Altura	
	IMC = Peso/Altura^2
	Escribir IMC
	Escribir "El diagn�stico del paciente ingresado es el siguiente:"
	
	si IMC < 16
		Escribir "Criterio de ingreso en hospital"
	SiNo
		si IMC >= 16 y IMC < 18
			Escribir "Bajo peso"
		SiNo
			si IMC >= 18 y IMC < 25
				Escribir "Peso normal (saludable)"
			SiNo
				si IMC >= 25 y IMC < 30
					Escribir "Sobrepeso (Obesidad de grado I)"
				SiNo
					si IMC >= 30 y IMC < 35
						Escribir "Sobrepeso cr�nico (Obesidad de grado II)"
					SiNo
						
						si IMC >= 35 y IMC < 40
							Escribir "Obesidad prem�rbida (Obesidad de grado III)"
						sino	
							Escribir "Obesidad m�rbida (Obesidad de grado IV)"
						FinSi
					FinSi
				FinSi
			FinSi
		FinSi	
	FinSi

	
	
	
	
FinAlgoritmo
