Algoritmo TP3_E11
	
///Datos de entrada: 
	//edad y antig�edad
///Datos de salida: 
	//Mensaje indicando a qu� tipo de 
	//jubilaci�n pertenece, si es que le corresponde una.
	
	
	Definir edad, antig Como Entero
	
	Escribir "Ingrese la edad de la persona."
	leer edad
	
	Escribir "Ingrese la antig�edad del empleo."
	Leer antig
	
	si edad >= 60 Entonces
		
		si antig < 25 Entonces
			
			Escribir "Le corresponde jubilaci�n por edad."
			
		SiNo
			
			Escribir "Le corresponde jubilaci�n por antig�edad adulta."
			
		FinSi
	SiNo
		si antig < 25 Entonces
			
			Escribir "No le corresponde jubilaci�n a�n."
			
		SiNo
			
			Escribir "Le corresponde jubilaci�n por antig�edad joven."
			
		FinSi
	FinSi
	
FinAlgoritmo
