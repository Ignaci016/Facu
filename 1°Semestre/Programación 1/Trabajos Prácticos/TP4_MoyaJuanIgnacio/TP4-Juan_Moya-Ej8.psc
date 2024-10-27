Algoritmo Ej08
	//Entrada: El usuario ingresa un número
	//Salida: Si la suma de los dígitos en posiciones pares es igual a la suma de los dígitos en posiciones impares.
	Definir num, i, sump, sumi Como Entero
	Definir cad Como Caracter
	
	Leer num
	sumi = 0
	sump = 0
	
	cad = convertiratexto(num)
	
	si Longitud(cad) > 1 Entonces
		
		para i = 0 Hasta Longitud(cad)
			
			sumi = sumi + ConvertirANumero(SubCadena(cad,(i-1)*2,(i-1)*2))
			sump = sump + ConvertirANumero(SubCadena(cad,(i-1)*2-1,(i-1)*2-1))
			
		FinPara
		
		si sumi == sump Entonces
			
			Escribir "la suma de los dígitos en posiciones pares es igual a la suma de los dígitos en posiciones impares"
			
		SiNo
			
			Escribir "la suma de los dígitos en posiciones pares no es igual a la suma de los dígitos en posiciones impares"
			
		FinSi
	SiNo
		
		Escribir "la suma de los dígitos en posiciones pares no es igual a la suma de los dígitos en posiciones impares (LA SUMA IMPAR=0)"
		
	FinSi
FinAlgoritmo