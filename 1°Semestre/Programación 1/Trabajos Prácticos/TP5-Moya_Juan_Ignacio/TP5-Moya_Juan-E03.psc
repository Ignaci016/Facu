Algoritmo TP5_E03
	///entrada:los operandos para la operación y la selección de operación a realizar
	///salida:resultados de las operaciones y menú de selección, mensajes de valores requeridos o ingresados erroneamente
	Definir num Como Entero
	Definir var Como Logico
	Definir suma, resta, mul, div Como Real
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
				suma=ConvertirANumero(Op1)+ConvertirANumero(Op2)
				Escribir "El resultado es: " suma
			SiNo
				Escribir "No se ingresaron los operandos"
				num=1
			FinSi
			3:si Op1<>"" o Op2<>"" entonces 
				resta=ConvertirANumero(Op1)-ConvertirANumero(Op2)
				Escribir "El resultado es: " resta
			SiNo
				Escribir "No se ingresaron los operandos"
				num=1
			FinSi
			4:si Op1<>"" o Op2<>"" entonces 
				mul=ConvertirANumero(Op1)*ConvertirANumero(Op2)
				Escribir "El resultado es: " mul
			SiNo
				Escribir "No se ingresaron los operandos"
				num=1
			FinSi
			5:si Op1<>"" o Op2<>"" entonces 
				div=ConvertirANumero(Op1)/ConvertirANumero(Op2)
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
