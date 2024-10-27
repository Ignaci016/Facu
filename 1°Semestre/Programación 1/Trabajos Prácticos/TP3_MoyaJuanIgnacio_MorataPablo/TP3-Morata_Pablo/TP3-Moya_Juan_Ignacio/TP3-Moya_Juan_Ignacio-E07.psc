Algoritmo TP3_E07
	//Datos de entrada: entero que determina la selección del usuario en cada caso
	//Datos de salida: Mensaje correspondiente al menú seleccionado en una primer instancia y otro mensaje correspondiente al tipo de pizza e ingredientes de la misma.
	Definir vegetariana Como Logico
	Definir num Como Entero
	Escribir "Ingrese si desea una pizza vegetariana(1) o no vegetariana(2)"
	Leer num
	si num==1 Entonces
		Escribir "Menú vegetariano, seleccione ingrediente extra: (1:pimiento, 2: tofu)"
		Leer num
		Segun num
			1:
				Escribir "La pizza es vegetariana y como ingredientes tiene mozzarella, tomate y pimiento"
			2:
				Escribir "La pizza es vegetariana y como ingredientes tiene mozzarella, tomate y tofu"
		FinSegun
	SiNo
		Escribir "Menú no vegetariano, seleccione ingrediente extra: (1: peperoni, 2: jamón, 3: salmón)"
		Leer num
		Segun num
			1:
				Escribir "La pizza no es vegetariana y como ingredientes tiene mozzarella, tomate y peperoni"
			2:
				Escribir "La pizza no es vegetariana y como ingredientes tiene mozzarella, tomate y jamón"
			3:
				Escribir "La pizza no es vegetariana y como ingredientes tiene mozzarella, tomate y salmón"
		FinSegun
	FinSi
FinAlgoritmo