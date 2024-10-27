Algoritmo Ej10
	
	Definir elec como entero
	Definir total Como Real
	Definir var Como Logico
	Definir tipo Como Caracter
	
	Escribir "Ingrese el tipo de hamburguesa que quiere ordenar: ((S) simples, (D) Dobles, (T) Triple)"	
	Escribir "Si quiere cerrar su orden, ingrese (F) Final"
	var=Falso
	total=0
	
	Repetir
		
		leer tipo
		tipo = Mayusculas(tipo)
		
		Segun tipo 
			
			"S":
				total=total+4000
				
			"D":
				total=total+5900
				
			"T":
				total=total+6500
				
			"F":
				var=Verdadero
				
				Escribir "credito o efectivo(1,2)?"
				leer elec
				
				si elec=1 Entonces
					
					total=total+(total*0.1)
					
				SiNo
					
					total=total-(total*0.05)
					
				FinSi
		FinSegun
		
	Mientras Que var=Falso

	Escribir total
	
FinAlgoritmo
