Algoritmo TP3_E13
	
	//Datos de entrada:Ancho, largo y alto de la habitación; Temperatura máxima y mínima de la zona en grados.
	//Datos de salida: Cantidad de frigorías necesarias para mantener refrigerado el ambiente de la zona.
	
	Definir ancho, largo, alto, tempMax, tempMin, FrigoMin, FrigoMax Como Real
	Escribir "Ingrese el ancho de la habitación:(utilice punto en caso de decimal ej:15.5)"
	Leer ancho
	Escribir "Ingrese el largo de la habitación:(utilice punto en caso de decimal ej:15.5)"
	leer largo
	Escribir "Ingrese el alto de la habitación:(utilice punto en caso de decimal ej:15.5)"
	leer alto
	Escribir "Ingrese la temperatura máxima de la habitación:(utilice punto en caso de decimal ej:15.5)"
	Leer tempMax
	Escribir "Ingrese la temperatura mínima de la habitación:(utilice punto en caso de decimal ej:15.5)"
	Leer tempMin
	FrigoMin=(ancho*largo*alto)*tempMax
	FrigoMax=(ancho*largo*alto)*tempMin
	Escribir "Las Frigorías mínimas son: " FrigoMin
	Escribir "Las Frigorías máximas son: " FrigoMax
FinAlgoritmo