Algoritmo TP3_E14
///entrada:
	//Peso del corredor, longitud del circuito en metros (nunca menor a 50m) y tiempo empleado en segundos	
///procesamiento:	
	//Calcular cuantos gramos perdió el corredor, si necesita vitamina A y C y comparar si superó el record 
	//del circuito olímpico y/o el panamericano
///Salida:
	//Cuantos gramos perdió el corredo, su peso final, si necesita vitaminas y cuales; y si superó o no el record olímpico y panamericano
	
	Definir peso, distancia, tiempo, Record_Olimpico, Record_Panamericano, gramos, gramos_final, peso_final Como Real
	
	Record_Panamericano = 15
	Record_Olimpico = 25
	
	
	Escribir "Ingrese el peso (en kilogramos) del corredor: "
	Leer peso
	
	
	Escribir "Ingrese la distancia (en metros) recorrida en el circuito: "
	Leer distancia
	
	Mientras distancia < 50 Hacer
		
		Escribir "No ha ingresado un circuito con distancia suficiente, por favor ingréselo nuevamente"
		Leer distancia
		
	FinMientras
	
	
	Escribir "Ingrese el tiempo (en segundos) que tardó en finalizar el circuito: "
	Leer tiempo
	tiempo=tiempo/distancia
	
	gramos = (distancia / 50)*100
	
	peso_final = peso - (gramos/1000)
	
	Escribir "El atleta perdio: " gramos "gr" 
	Escribir "Su peso final es: " peso_final "KG"
	
	
	si gramos >= 300 y gramos < 450 Entonces
		
		Escribir "El atleta necesitará vitamina A"
	SiNo
		si gramos >= 450 Entonces
			Escribir "El atleta necesitará vitamina A y C"
			
		SiNo
			Escribir "No necesitará suplemento vitamínico"
		FinSi
	
	FinSi
	
	si tiempo*300 <= Record_Olimpico  Entonces
		Escribir "Felicitaciones, superó el record olímpico"
		
	SiNo
		si tiempo*200 <= Record_Panamericano Entonces
			Escribir "Felicitaciones, superó el record panamericano"
			
		SiNo
			Escribir "Lo siento, no superó ningun record, siga enternando!!!!"
		FinSi
	FinSi
	
	
	
	
	
	
	
FinAlgoritmo
