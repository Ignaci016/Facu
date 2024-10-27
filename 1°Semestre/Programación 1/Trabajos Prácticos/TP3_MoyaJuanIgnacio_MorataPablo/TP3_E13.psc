Algoritmo TP3_E13
// Se desea realizar un programa para calcular la cantidad de frigor�as necesarias para mantener un
// ambiente acordemente refrigerado. Para realizar el c�lculo de la cantidad de frigor�as en primer
// lugar se necesita saber el volumen en metros c�bicos de la habitaci�n donde se va a instalar el
// aparato (Esto es ancho, largo y alto de la habitaci�n). Luego seg�n la siguiente tabla se
// determinan la cantidad de frigor�as m�nimas y m�ximas seg�n la temperatura m�xima estimada
// para la zona:
// Para obtener las frigor�as m�nimas de una zona se multiplican los metros c�bicos por el
// coeficiente adecuado. Por ejemplo, suponiendo que tiene una habitaci�n de 50 m3 y la
// temperatura m�xima estimada de la zona es 38 grados, entonces la cantidad m�nima de
// frigor�as es 2170 (50 * 43.4) y la cantidad m�xima es 2820 (50 * 56.4) La informaci�n variable
// consiste de: El volumen de la habitaci�n (ancho, largo y alto). Temperatura m�xima de la zona
// en grados.
	//Datos de entrada:Ancho, largo y alto de la habitaci�n; Temperatura m�xima de la zona en grados.
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
	
	Escribir "Las Frigor�as m�nimas son: " FrigoMin
	Escribir "Las Frigor�as m�ximas son: " FrigoMax
FinAlgoritmo