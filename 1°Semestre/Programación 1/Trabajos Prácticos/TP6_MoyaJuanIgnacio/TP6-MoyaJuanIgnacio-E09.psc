Algoritmo TP6_09
	
	///Entrada: 
	//2 n�meros (el numerador y el denomidador).
	
	///Salida: 
	//fracci�n que di� como resultado de la operaci�n realizada.
	
	Definir nA, dA, nB, dB, seleccion Como Entero
	
	Escribir "Numerador A"
	Leer nA
	
	Escribir "Denominador A"
	Leer dA
	
	Mientras dA = 0 Hacer
		
		Escribir "El denominador no puede ser igual a 0 (cero)"
		Leer dA
		
	FinMientras
	
	Escribir "Fracci�n A: " nA "/" dA 
	Escribir "Numerador B"
	Leer nB
	
	Escribir "Denominador B"
	Leer dB
	
	Mientras dA = 0 Hacer
		
		Escribir "El denominador no puede ser igual a 0 (cero)"
		Leer dB
		
	FinMientras
	
	Escribir "Fracci�n B: " nB "/" dB
	Escribir "Seleccione la operaci�n que desea realizar"
	Escribir "1_ Sumar"
	Escribir "2_ Restar"
	Escribir "3_ Multiplicar"
	Escribir "4_ Dividir"
	Escribir "5_ Salir"
	Leer seleccion
	
	Mientras seleccion <> 5
		
		Segun seleccion hacer
			1:
				Sumar(nA, dA, nB, dB)
			2:
				Restar(nA, dA, nB, dB)
			3:
				Multiplicar(nA, dA, nB, dB)
			4:
				Dividir(nA, dA, nB, dB)
			De Otro Modo:
				
				Escribir "El n�mero ingresado no es v�lido."
				
		FinSegun
		
		Leer seleccion
		
	FinMientras
	
FinAlgoritmo


Funcion mcd = CalcularMCD (n, d)
	
	Definir mcd, aux, a, b Como Entero
	
	a = n
	b = d
	
	Mientras b <> 0 Hacer
		
		aux = b
		b = a % b
		a = aux
		
	FinMientras
	
	mcd = a
	
FinFuncion

SubProceso Simplificar(n Por Referencia, d Por Referencia)
	
	Definir mcd Como Entero
	
	mcd = CalcularMCD(n, d)

	n = n / mcd
	d = d / mcd
	
FinSubProceso

SubProceso Sumar(nA, dA, nB, dB)
	
	Definir ns, ds Como Entero
	ns = (nA * dB) + (nB * dA)
	ds = (dA * dB)
	Simplificar(ns, ds)
	Escribir "Fracci�n resultado de la suma: " ns "/" ds
	
FinSubProceso

SubProceso Restar(nA, dA, nB, dB)
	
	Definir nr, dr Como Entero
	nr = (nA * dB) - (nB * dA)
	dr = (dA * dB)
	Simplificar(nr, dr)
	Escribir "Fracci�n resultado de la resta: " nr "/" dr
	
FinSubProceso

SubProceso Multiplicar(nA, dA, nB, dB)
	
	Definir nm, dm Como Entero
	nm = (nA * nB)
	dm = (dA * dB)
	Simplificar(nm, dm)
	Escribir "Fracci�n resultado de la multiplicaci�n: " nm "/" dm
	
FinSubProceso

SubProceso Dividir(nA, dA, nB, dB)
	
	Definir nd, dd Como Entero
	
	nd = (nA * dB)
	dd = (dA * nB)
	Si dd = 0
		
		Escribir "No se puede dividir por 0 (cero)"
		
	SiNo
		
		Simplificar(nd, dd)
		Escribir "Fracci�n resultado de la divisi�n: " nd "/" dd
		
	FinSi
	
FinSubProceso	