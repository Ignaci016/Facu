Algoritmo TP3_E01
//	1. Dados 3 n�meros enteros, deducir cu�l es el valor central.
	//Datos de entrada:3 n�meros enteros
	//Datos de salida: 1 n�mero entero (valor central)
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
			Escribir "Hay igualdades entre los n�meros ingresados"
			logic=Falso
		FinSi
	Mientras Que logic==Falso
	Escribir "El valor central entre los n�meros anteriores es: " valcentral
FinAlgoritmo