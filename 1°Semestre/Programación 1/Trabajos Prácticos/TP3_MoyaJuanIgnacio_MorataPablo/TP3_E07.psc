Algoritmo TP3_E07
	//Datos de entrada: entero que determina la selecci�n del usuario en cada caso
	//Datos de salida: Mensaje correspondiente al men� seleccionado en una primer instancia y otro mensaje correspondiente al tipo de pizza e ingredientes de la misma.
	Definir vegetariana Como Logico
	Definir num Como Entero
	Escribir "Ingrese si desea una pizza vegetariana(1) o no vegetariana(2)"
	Leer num
	si num==1 Entonces
		Escribir "Men� vegetariano, seleccione ingrediente extra: (1:pimiento, 2: tofu)"
		Leer num
		Segun num
			1:
				Escribir "La pizza es vegetariana y como ingredientes tiene mozzarella, tomate y pimiento"
			2:
				Escribir "La pizza es vegetariana y como ingredientes tiene mozzarella, tomate y tofu"
		FinSegun
	SiNo
		Escribir "Men� no vegetariano, seleccione ingrediente extra: (1: peperoni, 2: jam�n, 3: salm�n)"
		Leer num
		Segun num
			1:
				Escribir "La pizza no es vegetariana y como ingredientes tiene mozzarella, tomate y peperoni"
			2:
				Escribir "La pizza no es vegetariana y como ingredientes tiene mozzarella, tomate y jam�n"
			3:
				Escribir "La pizza no es vegetariana y como ingredientes tiene mozzarella, tomate y salm�n"
		FinSegun
	FinSi
FinAlgoritmo