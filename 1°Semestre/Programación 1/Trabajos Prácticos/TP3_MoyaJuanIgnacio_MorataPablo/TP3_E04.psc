Algoritmo TP3_E04
	
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
