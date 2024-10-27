Algoritmo TP3_E13
// Se desea realizar un programa para calcular la cantidad de frigorías necesarias para mantener un
// ambiente acordemente refrigerado. Para realizar el cálculo de la cantidad de frigorías en primer
// lugar se necesita saber el volumen en metros cúbicos de la habitación donde se va a instalar el
// aparato (Esto es ancho, largo y alto de la habitación). Luego según la siguiente tabla se
// determinan la cantidad de frigorías mínimas y máximas según la temperatura máxima estimada
// para la zona:
// Para obtener las frigorías mínimas de una zona se multiplican los metros cúbicos por el
// coeficiente adecuado. Por ejemplo, suponiendo que tiene una habitación de 50 m3 y la
// temperatura máxima estimada de la zona es 38 grados, entonces la cantidad mínima de
// frigorías es 2170 (50 * 43.4) y la cantidad máxima es 2820 (50 * 56.4) La información variable
// consiste de: El volumen de la habitación (ancho, largo y alto). Temperatura máxima de la zona
// en grados.
	//Datos de entrada:Ancho, largo y alto de la habitación; Temperatura máxima de la zona en grados.
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
	si tempMax<30 Entonces
		tempMax=47
		tempMin=36.15
	SiNo
		si tempMax>=30 y tempMax<=40 Entonces
			tempMax=56.4
			tempMin=43.4
		SiNo
			si tempMax>40 Entonces
				tempMax=65.8
				tempMin=50.6
			FinSi
		FinSi
	FinSi
	FrigoMax=(ancho*largo*alto)*tempMax
	FrigoMin=(ancho*largo*alto)*tempMin
	
	Escribir "Las Frigorías mínimas son: " FrigoMin
	Escribir "Las Frigorías máximas son: " FrigoMax
FinAlgoritmo