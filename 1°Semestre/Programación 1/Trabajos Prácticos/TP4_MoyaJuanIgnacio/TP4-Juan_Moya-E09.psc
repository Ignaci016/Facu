Algoritmo Ejercicio_9
	
	///Entrada: 
	//El usuario ingresa un n�mero par clasificar si es capic�a o no
	///Salida:
	//La entrega depender� si el n�mero es capic�a dir� que lo es, en caso de que
	//no lo sea, entregar� el n�mero original pero con sus d�gitos invertidos
	
	
	Definir num,ingreso , control2, control, parcial, exponente, capi, comparador Como Entero
	
	Escribir "Ingrese un n�mero"
	Leer num	
	

	control = 0
	comparador = num
	ingreso = num
	capi = 0
	control2 = 0
	
	Repetir
		
		num = trunc(num/10)
		control = control + 1
		
	Mientras Que num <> 0
	
	exponente = control - 1
	
	Repetir
		
		parcial = trunc(ingreso / 10^exponente)
		
		capi = capi + (parcial * 10 ^ control2 )
		
		ingreso = ingreso - parcial * 10^exponente
		
		exponente = exponente-1
		
		control2 = control2 +1

	Mientras Que control2 <= control-1
	
	si comparador == capi Entonces
		
		Escribir "El n�mero " comparador " es capic�a"
		
	SiNo
		
		Escribir "El n�mero ingresado no es capic�a e invertido es: " capi
		
	FinSi

	
	
	
FinAlgoritmo
