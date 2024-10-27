Algoritmo TP3_E15
	//Datos de entrada:Tiempo competidor A, tiempo competidor B (Hs,Min,Seg)
	//Datos de salida:Mensaje indicando qué corredor completó en menos tiempo el circuito.
	Definir HsA, MinA, SegA, HsB, MinB, SegB Como Entero
	Escribir "Ingrese las horas, minutos y segundos que se tardó el competidor A:(ej:2 (enter), 33(enter), 15(enter))."
	Leer HsA
	Leer MinA
	Leer SegA
	Escribir "Ingrese las horas, minutos y segundos que se tardó el competidor B:(ej:2 (enter), 33(enter), 15(enter))."
	Leer HsB
	Leer MinB
	Leer SegB
	HsA=(HsA/60)/60+MinA/60+SegA
	HsB=(HsB/60)/60+MinB/60+SegB
	
	HsA=HsA+MinA+SegA
	HsB=HsB+MinB+SegB
	
	si HsA==HsB Entonces
		Escribir "Los competidores tardaron lo mismo!"
	SiNo
		Si HsA>HsB Entonces
			Escribir "El competidor que completó el circuito antes fue: Competidor B"
		SiNo
			Escribir "El competidor que completó el circuito antes fue: Competidor A"
		FinSi
	FinSi
FinAlgoritmo