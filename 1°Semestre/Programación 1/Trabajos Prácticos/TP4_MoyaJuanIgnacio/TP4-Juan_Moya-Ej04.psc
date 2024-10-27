Algoritmo Ej04
	definir limS, limI, num, sumadentro Como Real
	Definir contafuera Como Entero
	Definir var, igu Como Logico
	var=Falso
	contafuera=0
	sumadentro=0
	igu=Falso
	Mientras var=Falso 
		Leer limS
		Leer limI
		si limS >= limI Entonces
			Hacer
			leer num
			si num>limI y num<limS Entonces
				sumadentro=sumadentro+num
			SiNo
				si num>limS o num<limI Entonces
					contafuera=contafuera+1
				SiNo
					si num=limI o num=limS entonces
						igu=Verdadero
					FinSi
				FinSi
			FinSi
			Mientras Que num<>0
			var=Verdadero
		FinSi
	FinMientras
	Escribir sumadentro
	Escribir igu
	Escribir contafuera/// -1? debido a que también cuenta el 0 que se usa para finalizar
FinAlgoritmo
