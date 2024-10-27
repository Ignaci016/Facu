Algoritmo Ej01
	///entrada:los operandos para la operación y la selección de operación a realizar
	///salida:resultados de las operaciones y menú de selección, mensajes de valores requeridos o ingresados erroneamente
	Definir num Como Entero
	Definir var Como Logico
	Definir sum, res, mul, div Como Real
	Definir Op1, Op2, sale Como Caracter
	var=Falso
	Op1=""
	Op2=""
	Repetir
		Escribir "MENU"
		escribir "1. Ingresar Operandos"
		escribir "2. Sumar"
		escribir "3. Restar"
		escribir "4. Multiplicar"
		escribir "5. Dividir"
		escribir "6. Salir"
		escribir "Elija opción:"
		Leer num
		Segun num Hacer
			1:escribir "Ingrese el 1er operando"
				leer Op1
				escribir "Ingrese el 2do operando"
				leer Op2
			2:si Op1<>"" o Op2<>"" entonces 
				sum=suma(Op1,Op2,sum)
				Escribir "El resultado es: " sum
			SiNo
				Escribir "No se ingresaron los operandos"
				num=1
			FinSi
			3:si Op1<>"" o Op2<>"" entonces 
				res=resta(Op1,Op2,res)
				Escribir "El resultado es: " res
			SiNo
				Escribir "No se ingresaron los operandos"
				num=1
			FinSi
			4:si Op1<>"" o Op2<>"" entonces 
				mul=multiplicación(Op1,Op2,mul)
				Escribir "El resultado es: " mul
			SiNo
				Escribir "No se ingresaron los operandos"
				num=1
			FinSi
			5:si Op1<>"" o Op2<>"" entonces 
				div=división(Op1,Op2,div)
				Escribir "El resultado es: " div
			SiNo
				Escribir "No se ingresaron los operandos"
				num=1
			FinSi
			6:escribir "Seguro que quiere salir(S/N)?"
				leer sale
				si sale="S" o sale="s" Entonces
					var=Verdadero
				FinSi
		FinSegun
	Mientras Que var=Falso
FinAlgoritmo

Funcion sum<-suma (Op1 Por Referencia, Op2 Por Referencia, sum Por Referencia)
	sum=ConvertirANumero(Op1)+ConvertirANumero(Op2)
FinFuncion
Funcion res<-resta (Op1 Por Referencia, Op2 Por Referencia, res Por Referencia)
	res=ConvertirANumero(Op1)-ConvertirANumero(Op2)
FinFuncion
Funcion mul<-multiplicación (Op1 Por Referencia, Op2 Por Referencia, mul Por Referencia)
	mul=ConvertirANumero(Op1)*ConvertirANumero(Op2)
FinFuncion
Funcion div<-división (Op1 Por Referencia, Op2 Por Referencia, div Por Referencia)
	div=ConvertirANumero(Op1)/ConvertirANumero(Op2)
FinFuncion
