Algoritmo TP5_Moya_Juan_Ailen_Herrera_E01
	// Datos de entrada: cantidad familias, cantidad de hijos, edad de los hijos
	// Datos de salida: promedio de edad de hijos por familia, promedio general de edad de los hijos de todas las familias
	Definir cant_familias, cant_hijos, edad_hijo, cant_hijosT, contador0, i, j,  suma0  Como Entero
	Definir suma,  promedio_h_familia Como Real
	Definir var Como Logico
	var = Verdadero
	contador0 = 0
	suma0 = 0
	suma = 0 
	promedio_h_familia = 0
	cant_hijosT = 0
	
	Mientras var = Verdadero
		Escribir "¿Cuántas familias son?"
		leer cant_familias
		si cant_familias > 0 Entonces
			var = Falso
			Para j = 1 Hasta cant_familias
				
				Repetir
					Escribir "¿Cuántos hijos tiene la familia ", j, "?"
					Leer cant_hijos
				Mientras Que cant_hijos <= 0
				
				Para i = 1 Hasta cant_hijos
					Escribir "¿Qué edad tiene su hijo Nº", i , "?"
					Leer edad_hijo
					suma0 = suma0 + edad_hijo
					cant_hijosT = cant_hijosT + 1
				FinPara
				
				suma = suma0 / cant_hijos
				Escribir "El promedio de la edad de hijos de esta familia es:" suma
				
				promedio_h_familia = promedio_h_familia + suma0
				suma0 = 0
				
			FinPara
			
		sino 
			escribir "Valor ingresado incorrectamente. Inténtelo nuevamente."
		FinSi
	FinMientras

	promedio_h_familia = promedio_h_familia / cant_hijosT
	Escribir "El promedio de la edad de hijos de todas las familias es:" promedio_h_familia

FinAlgoritmo
