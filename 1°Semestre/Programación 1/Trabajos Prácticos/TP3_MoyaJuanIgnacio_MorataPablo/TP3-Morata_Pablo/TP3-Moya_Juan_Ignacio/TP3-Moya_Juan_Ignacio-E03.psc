Algoritmo TP3_03
	
///Variables de entrada: 
	//Lados del tri�ngulo
///Procesamiento: 
	//Analiza las igualdades entre variables y las compara
///Datos de salida: 
	//La salida dir� el tipo de tri�ngulo ingresado
	
	Definir L1,L2,L3 Como Real
	Leer L1,L2,L3
	
	si L1 == L2 y L1 == L3 Entonces
		
		Escribir "Es un tri�ngulo equilatero"
		
	SiNo
		Si L1 <> L2 Y L1 <> L3 y L2 <> L3 Entonces
			
			Escribir "Es un tri�ngulo escaleno"
			
		SiNo
			Escribir "Es un tri�ngulo Is�seles"
			
		FinSi
	FinSi
FinAlgoritmo
