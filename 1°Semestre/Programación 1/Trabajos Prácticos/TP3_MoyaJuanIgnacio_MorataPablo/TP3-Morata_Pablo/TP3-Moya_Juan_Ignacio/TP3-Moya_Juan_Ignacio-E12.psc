Algoritmo TP3_E12
	
///entrada:
	//Letra representativa de la clase del socio y costo del tratamiento odontológico.
///Procesamiento:
	//Evaluar la clase del socio y aplicar el descuento correspondiente al costo del tratamiento.
///Salida:
	//Costo del tratamiento despues del descuento.
	
	Definir Clase Como Caracter
	Definir Monto_ini, Monto_fin Como Real
	
	Escribir "Ingrese la clase de socio que posee: "
	Leer Clase
	Clase = Mayusculas(Clase)
	Escribir "Ingrese el costo del tratamiento que se realizará: "
	Leer Monto_ini
	
	
	Segun Clase Hacer
		"A":
			Monto_fin = Monto_ini - (50 * Monto_ini)/100
		"B": 
			Monto_fin = Monto_ini - (35 * Monto_ini)/100
		"C":
			Monto_fin = Monto_ini
	FinSegun
	
	Escribir "El costo final del tratamiento será de : $", Monto_fin
	
	
	
FinAlgoritmo
