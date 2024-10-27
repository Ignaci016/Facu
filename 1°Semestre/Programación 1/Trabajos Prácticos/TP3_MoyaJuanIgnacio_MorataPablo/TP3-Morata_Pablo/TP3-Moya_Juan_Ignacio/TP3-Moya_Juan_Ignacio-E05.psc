Algoritmo TP3_E05
///Datos de entrada: 
	//litros usados, litros que faltan, total de latas
///Datos de salida: 
	//mensaje 
	

	Definir LitUsados,LitFaltan,TotalLatas Como Entero
	Escribir "Ingresar los litros que faltan"
	Leer LitFaltan
	Escribir "Ingresar los litros usados"
	Leer LitUsados
	Escribir "Ingresar el total de latas"
	leer TotalLatas
	si (TotalLatas - LitUsados)>=LitFaltan Entonces
		Escribir "la pintura alcanza"
	SiNo
		Escribir "la pintura no alcanza, falta/n: " LitFaltan-(TotalLatas-LitUsados) " Litro/s." 
	FinSi
FinAlgoritmo
