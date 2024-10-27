Algoritmo TP6_08
	
	///Entrada:
	//El usuario debe ingresar el nombre del trabajador, el dia de la semana, si ese dia es feriado o no, el turno y 
	//la cantidad de horas trabajadas
	
	///Datos:
	//Tarifa de horas diurnas $90
	//Tarifa de horas nocturnas $125
	//Tarifa de fin de semana: +10% diurno, +15% nocturno
	//Tarifa de feriados: el doble del monto final
	
	///Salida:
	//El programa entregarà el jornal diario del último trabajador ingresado por el usuario
	
	
	Definir nombre, dia, esferiado, queturno Como Caracter
	Definir horas, contador Como Entero
	Definir salario Como Real
	Definir feriado, turno Como Logico
	
	contador = 1
	feriado = Falso
	turno = Falso
	
	
	Repetir
		
		Escribir "Ingrese el nombre del trabajador nùmero " contador 
		Escribir "En caso de querer finalizar el programa, ingrese un cero (0)"
		Leer nombre
		
		si nombre <> "0" Entonces
			
		
		Escribir ""
		Escribir "Ingrese el día de la semana en el que trabajó"
		Escribir "Lunes (L)"
		Escribir "Martes (Ma)"
		Escribir "Miercoles (Mi)"
		Escribir "Jueves (J)"
		Escribir "Viernes (V)"
		Escribir "Sábado (S)"
		Escribir "Domingo (D)"
		
		leer dia
		
		Mientras Mayusculas(dia) <> "L" y Mayusculas(dia) <> "MA" y Mayusculas(dia) <> "MI" y Mayusculas(dia) <> "J" y Mayusculas(dia) <> "V" y Mayusculas(dia) <> "S" y Mayusculas(dia) <> "D"
			
			Escribir "Ha ingresado una opciòn inválida, ingresela nuevamente"
			leer dia 
			
		FinMientras
		
		
		
		Escribir ""
		Escribir "Ese día fue feriado?  Si (S) o No (N)"
		leer esferiado 
		
		
		Mientras Mayusculas(esferiado) <> "S" y Mayusculas(esferiado) <> "N"
			
			Escribir "Ha ingresado una opciòn inválida, ingrese (S o N)"
			leer esferiado 
			
		FinMientras
		
		si esferiado == "S" Entonces
			
			feriado = Verdadero
			
		FinSi
		
		Escribir ""
		Escribir "Ingrese las horas trabajadas"
		leer horas
		
		Mientras horas <= 0 Hacer
			
			Escribir "Ingrese horas positivas"
			leer horas
			
		FinMientras
		
		
		Escribir ""
		Escribir "Ingrese el turno trabajado  Diurno (D) o Nocturno (N)"
		
		leer queturno
		
		Mientras Mayusculas(queturno) <> "D" y Mayusculas(queturno) <> "N"
			
			Escribir "Ha ingresado una opciòn inválida, ingrese (D o N)"
			leer queturno 
			
		FinMientras
		
		si queturno == "D" Entonces
			
			turno = Verdadero
			
		FinSi
		
		salario = sueldo(horas, dia, feriado, turno)
		
		Escribir "El salario de " nombre " es: $" salario
		
		
		contador = contador + 1
	FinSi
	Escribir ""
	Escribir "Programa finalizado"
	Mientras Que nombre <> "0"
	
FinAlgoritmo


Funcion salario = sueldo(horas, dia, feriado, turno)
	
	Definir salario Como real	
	
	si turno = Verdadero Entonces
		
		salario = 90 * horas
		
	SiNo
		
		salario = 125 * horas
		
	FinSi
	
	si dia == "S" o dia == "D" Entonces
		
		si turno == Verdadero Entonces
			
			salario = salario + (salario * 0.1)
			
		SiNo
			
			salario = salario + (salario * 0.15)
			
		FinSi
	SiNo
		
	FinSi
	
	si feriado == Verdadero
		
		salario = salario * 2
		
	FinSi
	
	
	
	
	
	
	
	
	
FinFuncion
	