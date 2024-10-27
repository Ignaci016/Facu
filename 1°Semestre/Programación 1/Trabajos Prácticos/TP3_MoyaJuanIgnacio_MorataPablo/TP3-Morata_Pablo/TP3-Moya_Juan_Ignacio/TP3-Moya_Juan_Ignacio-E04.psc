Algoritmo TP3_E04
	
///Entrada:
	//A, B, C o D, estas 4 opciones indican la nota del alumno
///Procesamiento: 
	//compara con la base de datos si la entrada coincide con aprobado, recupera o pierde la materia
///Salida: 
	//entrega si el alumno aprobó, recupera o pierde la materia
	
	
	Definir Nota Como caracter
	
	Escribir "Ingrese la nota obtenida por el alumno"
	leer Nota
	
	Nota = Mayusculas(Nota)

	
	si Nota == "A" o Nota == "B"
		
		Escribir "El alumno está aprobado"
		
	SiNo
		Si Nota == "C"
			
			Escribir "El alumno recupera"
			
		SiNo
			
			Escribir "El alumno pierde la materia"
			
		FinSi
	FinSi
	
FinAlgoritmo
