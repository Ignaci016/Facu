Algoritmo Ej04
	///entrada:fecha ingresada por el usuario forma: dia mes a�o
	///salida:dia anterior a la fecha ingresada por el usuario
	Definir dia,mes,a�o como entero
	Definir diaa Como Caracter
	leer dia
	leer mes
	leer a�o
	diaa=diaanterior(dia,mes,a�o)
	Escribir diaa
FinAlgoritmo
Funcion fecha <- diaanterior (dia, mes,a�o)
	Definir fecha Como Caracter
	dia=dia-1
	si dia<=0 Entonces
		dia=dia+30
		mes=mes-1
		si mes<=0 Entonces
			mes=mes+12
			a�o=a�o-1
		FinSi
	FinSi
	fecha= Concatenar(ConvertirATexto(dia),ConvertirATexto(mes))
	fecha= Concatenar(fecha,ConvertirATexto(a�o))
FinFuncion
	