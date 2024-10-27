Algoritmo Ej02
	///Datos de entrada:Número ingresado por el usuario
	///Datos de salida:Mensaje indicando si es verdad o no que el número ingresado es capicúa
	Definir num Como Real
	Definir var, bar, zar Como Logico
	leer num
	var=capicua(num)
	bar=primo(num)
	zar=Timpares(num)
	Escribir "Es capicua?: " var
	Escribir "Es primo?: " bar
	Escribir "Todos sus números son impares?: " zar
FinAlgoritmo
Funcion sitiono <- Timpares (num)
	Definir sitiono Como Logico
	Definir i Como Entero
	sitiono=Verdadero
	para i=0 Hasta Longitud(ConvertirATexto(num))-1 Hacer
		si ConvertirANumero(subcadena(ConvertirATexto(num),i,i)) mod 2 = 0 Entonces
			sitiono=Falso
		FinSi
	FinPara
FinFuncion
Funcion sipono <- primo (num)
	Definir sipono Como Logico
	Definir i, cont Como Entero
	cont=0
	para i=num Hasta 1 Hacer
		si num mod i = 0 entonces
			cont=cont+1
		FinSi
	FinPara
	si cont=2 Entonces
		sipono=Verdadero
	FinSi
FinFuncion
Funcion siono <- capicua (num)
	Definir contador,i,j Como Entero
	Definir siono Como Logico
	contador=0
	j=Longitud(ConvertirATexto(num))
	para i=0 Hasta Longitud(ConvertirATexto(num)) Hacer
		j=j-1
		si subcadena(ConvertirATexto(num),i,i) <> subcadena(ConvertirATexto(num),j,j) Entonces
			contador=contador+1
		FinSi
	FinPara
	si contador=0 Entonces
		siono=Verdadero
	FinSi
FinFuncion