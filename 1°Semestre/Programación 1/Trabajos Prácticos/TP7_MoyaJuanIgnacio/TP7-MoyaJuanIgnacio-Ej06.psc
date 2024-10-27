/// Datos de entrada: Una frase que ingresa el usuario y el índice en el que desea reemplazar el valor del vector.
/// Datos de salida: El vector modificado (de ser posible).
Algoritmo Ej06
	
	Definir frase, vectorConCaracteres, caracterUsuario Como Caracter
	Definir indice Como Entero;
	
	Dimension vectorConCaracteres[20]
	
	frase = ingresarFrase;
	vectorizarCadena(frase, vectorConCaracteres)
	
	mostrarVector(vectorConCaracteres, 20)
	
	Repetir
		
		Escribir "Ingrese en que posición del vector desea agragar el caracter: "
		Leer indice;
		
		si indice < 1 y indice > 20 Entonces
			
			Escribir "Por favor, ingrese un valor entre 1 y 20"
			
		FinSi
		
	Mientras Que indice < 1 y indice > 20  
	
	Repetir
		
		Escribir "Ingrese el caracter que desea agregar en ese índice."
		Leer caracterUsuario;
		
		si Longitud(caracterUsuario) <> 1 Entonces
			
			Escribir "Por favor, ingrese un solo caracter."
			
		FinSi
		
	Mientras Que Longitud(caracterUsuario) <> 1 
	
	si vectorConCaracteres(indice) == "" Entonces
		
		vectorConCaracteres(indice) = caracterUsuario;
		mostrarVector(vectorConCaracteres, 20);
		
	SiNo
		
		Escribir "Ese espacio está ocupado. No se pudo completar la operación.";
		
	FinSi
	
	
	
FinAlgoritmo
///---------------------------------------------------------------------------------
SubProceso vectorizarCadena(frase, vectorConCaracteres) 
	
	Definir caracterActual Como Caracter;
	Definir i Como Entero;
	
	Para i = 0 Hasta 19 Con Paso 1 Hacer
		
		caracterActual = Subcadena(frase, i, i)
		
		vectorConCaracteres(i) = caracterActual;
		
	FinPara
	
FinSubProceso
///---------------------------------------------------------------------------------
Funcion frase = ingresarFrase
	
	Definir frase Como Caracter;
	
	Repetir
		
		Escribir "Escriba la frase que desee ingresar.";
		Leer frase;
		
		si Longitud(frase) < 1 y Longitud(frase) > 20 Entonces
			
			Escribir "ERROR: ingrese una frase válida."
			
		FinSi
		
	Mientras Que Longitud(frase) < 1 y Longitud(frase) > 20
	
FinFuncion
///---------------------------------------------------------------------------------
SubProceso mostrarVector (vector, dimensionVector)
	
	Definir i Como Entero;
	
	Para i = 0 Hasta dimensionVector - 1 Hacer
		
		Escribir Sin Saltar vector(i) " | "
		
	FinPara
	
	Escribir "";
	
FinSubProceso
///---------------------------------------------------------------------------------














