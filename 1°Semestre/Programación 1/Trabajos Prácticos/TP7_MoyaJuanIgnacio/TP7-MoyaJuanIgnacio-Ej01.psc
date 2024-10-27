Algoritmo Ej01
	///Entrada:El programa genera 100 notas aleatorias(entre 0 y 20)
	///Salida:Se muestra un mensaje indicando la situación de los estudiantes:
	/// Deficientes 0-5 Regulares 6-10 Buenos 11-15 Excelentes 16-20
	Dimension notas(100)
	Definir notas,i,contdeficientes,contregulares,contbuenos,contexcelentes Como Entero
	contdeficientes=0
	contregulares=0
	contbuenos=0
	contexcelentes=0
	Para i=0 Hasta 99 Hacer
		notas(i)=Aleatorio(0,20)
		si notas(i) >= 0 y notas(i) <= 5 Entonces
			contdeficientes=contdeficientes+1
		SiNo
			si notas(i) >=6 y notas(i)<=10 Entonces
				contregulares=contregulares+1
			SiNo
				si notas(i) >= 11 y notas(i) <= 15 Entonces
					contbuenos=contbuenos+1
				SiNo
					contexcelentes=contexcelentes+1
				FinSi
			FinSi
		FinSi
	FinPara
	Escribir "La cant de estudiantes deficientes es: " contdeficientes
	Escribir "La cant de estudiantes regulares es: " contregulares
	Escribir "La cant de estudiantes buenos es: " contbuenos
	Escribir "La cant de estudiantes excelentes es: " contexcelentes
FinAlgoritmo
