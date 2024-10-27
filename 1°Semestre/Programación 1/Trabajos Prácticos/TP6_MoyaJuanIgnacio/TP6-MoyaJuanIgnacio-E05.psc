Algoritmo TP6_05
	
	///Entrada: 
	//un número (posición en la serie de fibonacci).
	
	///Salida: 
	//el número que se encuentra en esa posición de fibonacci.
	
	
	
	Definir contador Como Entero
	
	Definir confirmar como cadena
	
	Repetir
		
		Escribir "Ingrese la posición en la serie de fibonacci."
		Leer contador
		
		Mientras contador<0 
			
			Escribir "Valor no válido, por favor ingrese un nuevo valor que sea válido."
			Escribir "Recuerde que el valor debe ser mayor a cero."
			Leer contador
			
		FinMientras
		
		seriefibonacci(contador)
		
		Escribir "¿Desea realizar el procedimiento con otro valor?"
		Escribir "	Opciones:"
		Escribir "		1_ S (si)  		"
		Escribir "		2_ N (no)		"
		Leer confirmar
		
		confirmar=Mayusculas(confirmar)
		
		Mientras confirmar<>"S" y confirmar<>"N" 
			
			Escribir "Opción no válida, por favor ingrese una nueva opción que sea válida."
			Escribir "Recuerde:"
			Escribir "	Opciones:"
			Escribir "		1_ S (si)  		"
			Escribir "		2_ N (no)		"
			Leer confirmar
			
			confirmar=Mayusculas(confirmar)
		
		FinMientras
		
	Mientras que confirmar<>"N"
	
FinAlgoritmo

Funcion SerieFibonacci(contador)
	
	Definir a,b,c,i Como Entero	
	
	Si contador=1 Entonces
		
		c=0
		
	SiNo
		
		a=0
		b=1
		c=0
		
		Para i=2 Hasta contador
			
			c=a+b
			a=b
			b=c
			
		FinPara
		
		Escribir "El número en la posición: ",contador, " es: ", c
		
	FinSi
	
FinFuncion
	