Algoritmo TP3_E13
	
	//Datos de entrada:Ancho, largo y alto de la habitaci�n; Temperatura m�xima y m�nima de la zona en grados.
	//Datos de salida: Cantidad de frigor�as necesarias para mantener refrigerado el ambiente de la zona.
	
	Definir ancho, largo, alto, tempMax, tempMin, FrigoMin, FrigoMax Como Real
	Escribir "Ingrese el ancho de la habitaci�n:(utilice punto en caso de decimal ej:15.5)"
	Leer ancho
	Escribir "Ingrese el largo de la habitaci�n:(utilice punto en caso de decimal ej:15.5)"
	leer largo
	Escribir "Ingrese el alto de la habitaci�n:(utilice punto en caso de decimal ej:15.5)"
	leer alto
	Escribir "Ingrese la temperatura m�xima de la habitaci�n:(utilice punto en caso de decimal ej:15.5)"
	Leer tempMax
	Escribir "Ingrese la temperatura m�nima de la habitaci�n:(utilice punto en caso de decimal ej:15.5)"
	Leer tempMin
	FrigoMin=(ancho*largo*alto)*tempMax
	FrigoMax=(ancho*largo*alto)*tempMin
	Escribir "Las Frigor�as m�nimas son: " FrigoMin
	Escribir "Las Frigor�as m�ximas son: " FrigoMax
FinAlgoritmo