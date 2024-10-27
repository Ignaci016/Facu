Algoritmo Ejercicio_9
	
	///Entrada: 
	//El usuario ingresa un número par clasificar si es capicúa o no
	///Salida:
	//La entrega dependerá si el número es capicúa dirá que lo es, en caso de que
	//no lo sea, entregará el número original pero con sus dígitos invertidos
	
	
	Definir num,ingreso , control2, control, parcial, exponente, capi, comparador Como Entero
	
	Escribir "Ingrese un número"
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
		
		Escribir "El nùmero " comparador " es capicùa"
		
	SiNo
		
		Escribir "El nùmero ingresado no es capicùa e invertido es: " capi
		
	FinSi

	
	
	
FinAlgoritmo
