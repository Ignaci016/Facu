Algoritmo TP3_E11
	
///Datos de entrada: 
	//edad y antigüedad
///Datos de salida: 
	//Mensaje indicando a qué tipo de 
	//jubilación pertenece, si es que le corresponde una.
	
	
	Definir edad, antig Como Entero
	
	Escribir "Ingrese la edad de la persona."
	leer edad
	
	Escribir "Ingrese la antigüedad del empleo."
	Leer antig
	
	si edad >= 60 Entonces
		
		si antig < 25 Entonces
			
			Escribir "Le corresponde jubilación por edad."
			
		SiNo
			
			Escribir "Le corresponde jubilación por antigüedad adulta."
			
		FinSi
	SiNo
		si antig < 25 Entonces
			
			Escribir "No le corresponde jubilación aún."
			
		SiNo
			
			Escribir "Le corresponde jubilación por antigüedad joven."
			
		FinSi
	FinSi
	
FinAlgoritmo
