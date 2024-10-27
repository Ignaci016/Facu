Algoritmo TP3_E09
	
	
///Datos de entrada: 
	//numero de días, distancia
///Datos de salida: 
	//Mensaje precio pasaje de avión ida y vuelta.
	
	
	
	Definir dias Como Entero
	
	Definir distancia,pasaje Como Real
	
	Escribir "Ingrese la cant. de días de estancia sin puntos, espacios ni comas ej:4"
	Leer dias
	
	Escribir "Ingrese la distancia en km (en caso de no ser n° entero la distancia, ingresar con punto, no con coma)ej:802.5"
	Leer distancia
	
	pasaje = distancia * 4.5
	
	si dias > 7 y distancia > 800 Entonces
		
		pasaje = pasaje - pasaje * 0.30
		
	FinSi
	
	pasaje = pasaje * 2
	
	Escribir "El precio del pasaje de ida y vuelta es: $" pasaje 
	
	
FinAlgoritmo
