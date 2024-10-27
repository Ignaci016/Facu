Algoritmo TP6_10
	
	///Entrada: 
	//6 datos en total (ancho, largo, alto, cantidad de ventanas, puertas y manos a pintar).
	
	///Salida: 
	//superficie a pintar, minimo de cantidad de latas y de qué tamaño son, y cuánto dinero se necesita para pagar toda la pintura.
	
	Definir ancho, alto, largo, SuperficieTotal Como Real
	Definir ventanas, puertas, manos como Entero
	
	Escribir "Ingrese el ancho."
	Leer ancho
	
	Validar(ancho)
	
	Escribir "Ingrese la altura."
	Leer alto
	
	Validar(alto)
	
	Escribir "Ingrese el largo."
	Leer largo
	
	Validar(largo)
	
	Escribir "Ingrese la cantidad de ventanas."
	Leer ventanas
	
	Validar(ventanas)
	
	Escribir "Ingrese la cantidad de puertas."
	Leer puertas
	
	Validar(puertas)
	
	Escribir "Ingrese la cantidad de manos."
	Leer manos
	Validar(manos)
	
	SuperficieTotal = (CalcSuperficie(ancho,largo,alto) - Aberturas(ventanas, puertas))
	Escribir "La superficie a pintar es: ", SuperficieTotal
	
	CalcLatas(SuperficieTotal, manos)
	
FinAlgoritmo

SubProceso Validar(dato)
	
	Mientras dato <= 0 Hacer
		
		Escribir "El dato ingresado no es válido, ingrese nuevamente. Recuerde no debe de ser menor o igual a 0 (cero)"
		Leer dato
		
	FinMientras
	
FinSubProceso 

Funcion val = CalcSuperficie (ancho, largo, alto)
	
	Definir val Como Real
	
	val = (2 * largo * alto) + (2 * ancho * alto)
	
	Escribir "Superficie: ", val
	
FinFuncion

Funcion val = Aberturas (ventanas, puertas)
	
	Definir val Como Real
	
	val = (puertas * 0.75 * 2) + (ventanas * 1.20 * 1.50)
	
	Escribir "Superficie aberturas: ", val
	
	
FinFuncion

SubProceso CalcLatas (SuperficieTotal, manos)
	
	Definir superficie Como Real
	Definir latas20, latas10, latas4, latas1 Como Entero
	
	latas20 = 0
	latas10 = 0
	latas4 = 0
	latas1 = 0
	superficie = manos * SuperficieTotal
	
	Mientras superficie > 0
		
		Si superficie >= (20 * 14)
			
			superficie = superficie - (20 * 14)
			latas20 = latas20 + 1
			
		SiNo
			Si superficie >= (10 * 14)
				
				superficie = superficie - (10 * 14)
				latas10 = latas10 + 1
				
			SiNo
				Si superficie >= (4 * 14)
					
					superficie = superficie - (4 * 14)
					latas4 = latas4 + 1
					
				SiNo
					
					superficie = superficie - (1 * 14)
					latas1 = latas1 +1
					
				FinSi
			FinSi
		FinSi
	FinMientras
	
	Escribir "Mínimo de latas para pintar: ", SuperficieTotal, "m2 con ", manos, " manos de pintura (", SuperficieTotal*Manos, "m2)"
	Escribir "Latas de 20L: " latas20
	Escribir "Latas de 10L: " latas10
	Escribir "Latas de 4L: " latas4
	Escribir "Latas de 1L: " latas1
	Escribir "Precio = $" latas20*700+latas10*400+latas4*170+latas1*50
	
FinSubProceso