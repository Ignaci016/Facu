Algoritmo TP3_03
	
///Variables de entrada: 
	//Lados del triángulo
///Procesamiento: 
	//Analiza las igualdades entre variables y las compara
///Datos de salida: 
	//La salida dirà el tipo de triángulo ingresado
	
	Definir L1,L2,L3 Como Real
	Leer L1,L2,L3
	
	si L1 == L2 y L1 == L3 Entonces
		
		Escribir "Es un triángulo equilatero"
		
	SiNo
		Si L1 <> L2 Y L1 <> L3 y L2 <> L3 Entonces
			
			Escribir "Es un triángulo escaleno"
			
		SiNo
			Escribir "Es un triángulo Isóseles"
			
		FinSi
	FinSi
FinAlgoritmo
