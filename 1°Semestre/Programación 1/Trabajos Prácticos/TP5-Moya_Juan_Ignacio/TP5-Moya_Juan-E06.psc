Algoritmo TP5_E06
	///entrada:respuesta del usuario a la operación
	///salida: si es correcta sigue el programa, sino advierte al usuario y le vuelve a pedir el resultado
	Definir Op1, Op2, i, resul,n Como Entero
	Definir respu como real
	Para i=1 Hasta 7 Hacer
		Op1=Aleatorio(0,50)
		Op2=Aleatorio(0,50)
		n=Aleatorio(1,4)
		segun n Hacer
			1:resul=Op1+Op2
				Escribir Op1 "+" Op2 
			2:resul=Op1-Op2
				Escribir Op1 "-" Op2 
			3:resul=Op1*Op2
				Escribir Op1 "*" Op2 
			4:resul=trunc(Op1/Op2)
				Escribir Op1 "/" Op2 
		FinSegun
		Repetir
			Escribir "resultado(n° entero):"
			Repetir
				leer respu
				si respu-trunc(respu)<>0 Entonces
					Escribir "No se ingresó un entero, ingrese nuevamente."
				FinSi
			Mientras Que respu-trunc(respu)<>0
			si resul <> respu Entonces
				Escribir "Incorrecto"
			FinSi
		Mientras Que resul <> respu
	FinPara
FinAlgoritmo
