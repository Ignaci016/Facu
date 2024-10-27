Algoritmo Ej04
	///entrada:fecha ingresada por el usuario forma: dia mes año
	///salida:dia anterior a la fecha ingresada por el usuario
	Definir dia,mes,año como entero
	Definir diaa Como Caracter
	leer dia
	leer mes
	leer año
	diaa=diaanterior(dia,mes,año)
	Escribir diaa
FinAlgoritmo
Funcion fecha <- diaanterior (dia, mes,año)
	Definir fecha Como Caracter
	dia=dia-1
	si dia<=0 Entonces
		dia=dia+30
		mes=mes-1
		si mes<=0 Entonces
			mes=mes+12
			año=año-1
		FinSi
	FinSi
	fecha= Concatenar(ConvertirATexto(dia),ConvertirATexto(mes))
	fecha= Concatenar(fecha,ConvertirATexto(año))
FinFuncion
	