//Tomando en cuenta el ejercicio anterior, mejore el mecanismo de inserción del carácter, facilitando
//un potencial reordenamiento del vector. Digamos que se pide ingresar el carácter en la posición X y
//la misma está ocupada, entonces de existir un espacio en cualquier posición X-n o X+n, desplazar
//los caracteres hacia la izquierda o hacia la derecha para poder ingresar el carácter en cuestión en
//	el lugar deseado. El procedimiento de reordenamiento debe ubicar el espacio más cercano y
//	desplazar los caracteres hasta alcanzar esa posición.
//Ejemplo, suponiendo la siguiente frase y los subíndices del vector:

/// Datos de entrada: Una frase que ingresa el usuario y el índice en el que desea reemplazar el valor del vector.
/// Datos de salida: El vector modificado (de ser posible).

///Tiene problemas en los extremos.

Algoritmo Ejercicio_7
	
	Definir frase, vectorConCaracteres, caracterUsuario Como Caracter;
	Definir indice Como Entero;
	Definir estaLleno Como Logico;
	
	Dimension vectorConCaracteres[20]
	
	frase = ingresarFrase;
	vectorizarCadena(frase, 20, vectorConCaracteres);
	
	mostrarVector(vectorConCaracteres, 20);
	
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
	
	estaLleno = verificadorVectorLLeno(vectorConCaracteres, 20);
	
	si vectorConCaracteres(indice) == "" o vectorConCaracteres(indice) == " " Entonces
		
		vectorConCaracteres(indice) = caracterUsuario;
		mostrarVector(vectorConCaracteres, 20);
		
	SiNo
		
		si estaLleno Entonces
			
			Escribir "Ese espacio está ocupado. No se pudo completar la operación.";
			
		SiNo
			
			redistribucionVector(vectorConCaracteres, 20, indice,caracterUsuario);
			Escribir "Se corrieron el resto de letras para ingresar el nuevo caracter. El nuevo vector es: "
			mostrarVector(vectorConCaracteres, 20);
			
		FinSi
		
	FinSi
	
FinAlgoritmo
///---------------------------------------------------------------------------------
SubProceso vectorizarCadena(frase, dimensionVector, vectorConCaracteres) 
	
	Definir caracterActual Como Caracter;
	Definir i Como Entero;
	
	Para i = 0 Hasta dimensionVector - 1 Con Paso 1 Hacer
		
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
		
		si Longitud(frase) < 1 o Longitud(frase) > 20 Entonces
			
			Escribir "ERROR: ingrese una frase válida."
			
		FinSi
		
	Mientras Que Longitud(frase) < 1 o Longitud(frase) > 20
	
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
Funcion estaLleno = verificadorVectorLLeno(vector, dimensionVector)
	
	Definir estaLleno Como Logico;
	Definir i Como Entero;
	
	estaLleno = Verdadero;
	
	Para i = 0 Hasta dimensionVector - 1 Con Paso 1 Hacer
		
		si vector(i) == "" o vector(i) == " " Entonces
			
			estaLleno = Falso;
			
		FinSi
		
	FinPara
	
FinFuncion
///---------------------------------------------------------------------------------
SubProceso redistribucionVector(vector, dimensionVector, indice, caracterUsuario)
	
	Definir buscadorIzquierda, buscadorDerecha, i, desplazamiento Como Entero;
	Definir valorAuxiliar, valorAuxiliar2 Como Caracter;
	
	valorAuxiliar = vector(indice);
	valorAuxiliar2 = "";
	buscadorIzquierda = 0;
	buscadorDerecha = 0;
	i = indice;
	
	Repetir
		
		i = i - 1
		buscadorIzquierda = buscadorIzquierda + 1;
		
		si i = - 1 Entonces
			
			i = 0
			
		FinSi
		
		si i = 0 Entonces
			
			si no (vector(0) = "" o vector(0) = " ") Entonces
				
				buscadorIzquierda = 1000;
				
			FinSi
			
		FinSi
		
	Mientras Que vector(i) <> "" y vector(i) <> " " y i > 0
	
	i = indice;
	
	Repetir
		
		i = i + 1
		buscadorDerecha = buscadorDerecha + 1;
		
		si i > dimensionVector - 1 Entonces
			
			i = dimensionVector - 1
			
		FinSi
		
		si i = dimensionVector - 1 Entonces
			
			si no (vector(dimensionVector - 1) = "" o vector(dimensionVector - 1) = " ") Entonces
				
				buscadorDerecha = 1000;
				
			FinSi
			
		FinSi
		
	Mientras Que vector(i) <> "" y vector(i) <> " " y i < dimensionVector - 1
	
	si buscadorIzquierda > buscadorDerecha Entonces
		
		Para i = buscadorDerecha + indice Hasta indice Con Paso - 1 Hacer
			
			vector(i) = vector(i-1)
			
		FinPara
		
		vector(indice) = caracterUsuario;
	SiNo
		
		Para i = indice - buscadorIzquierda Hasta indice Con Paso 1 Hacer
			
			vector(i) = vector(i+1)
			
		FinPara
		
		vector(indice) = caracterUsuario;
		
	FinSi
	
FinSubProceso












