Algoritmo Ej03
	///entrada:2 numeros ingresados por el usuario
	///salida:cociente y resto de la división de dichos numeros
	Definir num1,num2,var,res Como real
	leer num1
	leer num2
	var=division(num1,num2,res)
	Escribir "el cociente es: " var " y el resto es: " res
FinAlgoritmo
Funcion div <- division(num1,num2,res Por Referencia)
	Definir cont,div Como Real
	res=num1
	cont=0
	Repetir
		res=res-num2
		cont=cont+1
	Mientras que res-num2>0
	res=res/10
	div=cont+res
FinFuncion
	