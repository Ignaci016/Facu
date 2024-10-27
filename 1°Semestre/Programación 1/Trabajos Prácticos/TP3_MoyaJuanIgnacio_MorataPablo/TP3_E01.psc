Algoritmo TP3_E01
//	1. Dados 3 números enteros, deducir cuál es el valor central.
	//Datos de entrada:3 números enteros
	//Datos de salida: 1 número entero (valor central)
	Definir entero1,entero2,entero3,valcentral Como Entero
	Definir logic Como Logico
	logic=Verdadero
	Repetir
		Leer entero1,entero2,entero3
		si entero1 <> entero2 y entero2 <> entero3 y entero1 <> entero3 Entonces
			si (entero1>entero2 y entero1<entero3) o (entero1<entero2 y entero1>entero3) Entonces
				valcentral=entero1
				logic=Verdadero
			SiNo
				si (entero2>entero1 y entero2<entero3) o (entero2<entero1 y entero2>entero3) Entonces
					valcentral=entero2
					logic=Verdadero	
				SiNo
					valcentral=entero3
					logic=Verdadero	
				FinSi
			FinSi
		SiNo
			Escribir "Hay igualdades entre los números ingresados"
			logic=Falso
		FinSi
	Mientras Que logic==Falso
	Escribir "El valor central entre los números anteriores es: " valcentral
FinAlgoritmo