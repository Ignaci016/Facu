Algoritmo Ej04
	
	definir n, i, largo Como Entero
	definir letra, frase, frase_armada, palabra Como Caracter
	
	frase_armada= ""
	
	escribir "Ingrese palabra o frase y termine en punto. " sin saltar 
	leer palabra
	largo = Longitud(palabra)
	
	dimension frase(largo)
	
	para i=0 Hasta largo-1
		frase(i) = SubCadena(palabra,i,i)
		cambio_vocales(frase(i))
		
		frase_armada= Concatenar(frase_armada, frase(i))
	FinPara
	
	Escribir "La frase encriptada es: " frase_armada
FinAlgoritmo

subproceso cambio_vocales(n Por Referencia)
	segun n Hacer
		"a": n= "@" 
		"e": n= "#"
		"i": n= "$"
		"o": n= "%"
		"u": n= "*"
		De Otro Modo:
	FinSegun
FinSubProceso
	