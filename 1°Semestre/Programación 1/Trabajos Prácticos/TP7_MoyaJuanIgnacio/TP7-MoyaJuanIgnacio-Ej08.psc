Algoritmo Ejercicio_8_TP7
	
	
	Definir opc_menu, matriz, orden Como Entero
	Definir hay_datos,salir Como Logico
	Definir escape Como caracter

	salir = Falso
	hay_datos = Falso
	
	Repetir
		
		opc_menu = menu_validacion
		
		
		si opc_menu == 1 Entonces
			
			orden = 0
			eleccion_orden(orden, hay_datos)
		 
			si hay_datos == Falso Entonces
				
				Dimension matriz(orden,orden)
				
				generar_matriz(orden, matriz)
			SiNo
				
				Redimensionar matriz(orden, orden)
				generar_matriz(orden, matriz)
				
			FinSi
			
			hay_datos = Verdadero
			
			
		FinSi
		
		si opc_menu = 7 Entonces
			
			Escribir "¿Está seguro de querer salir? S/N"
			leer escape
			si Mayusculas(escape) = "S"
				
				salir = Verdadero
				
			FinSi
		SiNo
			
			eleccion_menu1(opc_menu, orden, matriz, hay_datos,salir)
			
		FinSi
		
		
	Mientras Que salir <> Verdadero
	
	
	
	
	
FinAlgoritmo
//-----------------------------------------------------------------------//
Funcion opc_menu = menu_validacion
	
	Definir opc_menu Como Entero
	
	Escribir "----------------------------------------------"
	Escribir "                 OPCIONES"
	Escribir "----------------------------------------------"
	Escribir "  1_ Ingresar tamaño de la matriz"
	Escribir "  2_ Mostrar matriz por pantalla"
	Escribir "  3_ Mostrar contenido de una ubicación"
	Escribir "  4_ Mostrar valores de la diagonal principal"
	Escribir "  5_ Mostar valores de la diagonal secundaria"
	Escribir "  6_ Mostrar contorno de la matriz"
	Escribir "  7_ Salir"
	Escribir "----------------------------------------------"
	Escribir " ¿Qué opción desea elegir?"
	
	Leer opc_menu
	
	
	Mientras opc_menu > 7 o opc_menu < 1 Hacer
		
		Escribir "!!!ERROR¡¡¡" 
		Escribir "Ingrese una opcion que si aparezca en el menú "
		
		leer opc_menu
		
	FinMientras
	
	Mientras opc_menu <> 1 Hacer
		
		Escribir "Antes de realizar una operación debe ingresar un orden de matriz"
		
		opc_menu = 1
		
		
	FinMientras
	
FinFuncion
//-----------------------------------------------------------------------//
SubAlgoritmo generar_matriz(orden, matriz)
	
	Definir i, j Como Entero
	
	para i desde 0 hasta orden - 1 Hacer
		
		para j desde 0 Hasta orden - 1 Hacer
			
			matriz(i, j) = Aleatorio(0 , 9)
			
		FinPara
		
	FinPara
	
FinSubAlgoritmo

//-----------------------------------------------------------------------//

SubAlgoritmo eleccion_orden(orden Por Referencia, hay_datos Por Referencia)
	
	
	Escribir "Ingrese el tamaño de su matriz"
	leer orden
	
	Mientras orden mod 2 = 0 Hacer
		
		Escribir "Debe ingresar un orden impar"
		leer orden
		
		
	FinMientras
	
	
FinSubAlgoritmo

//-----------------------------------------------------------------------//

SubAlgoritmo eleccion_menu1(opc_menu, orden Por Referencia, matriz, hay_datos, salir Por Referencia)
	
	Definir salida, fila, columna Como Entero

	
	si hay_datos = Verdadero Entonces
		
		Segun opc_menu Hacer
			
			2: 
				Escribir "La matriz generada es: "
				mostrar_matriz(matriz, orden)
				
			3:
				Escribir "Ingrese la fila del elemento "
				leer fila
				Escribir "Ingrese la columna del elemento"
				leer columna
				
				salida = un_elemento(fila, columna, matriz)
				Escribir "El elemento " fila " x " columna " es:" salida
				
			4:
				Escribir ""
				Escribir "La diagonal principal es:"
				mostrardiagonalprincipal(matriz, orden)
				
			5:
				Escribir ""
				Escribir "La diagonal secundaria es:"
				mostrardiagonalsecundaria(matriz, orden)
			6:
				Escribir ""
				Escribir "El contorno de la matriz es:"
				mostrarcontorno(matriz, orden)
			
		FinSegun
		
	SiNo
		
		Escribir "Primero debe ingresar el orden de la matriz"
		leer orden
		
	FinSi
	
	
	
FinSubAlgoritmo

//-----------------------------------------------------------------------//

SubAlgoritmo mostrar_matriz(matriz, orden)
	Definir i, j Como Entero
	
	
	para i desde 0 hasta orden - 1 Hacer
		Escribir Sin Saltar "|"
		para j desde 0 Hasta orden - 1 Hacer
			
			Escribir Sin Saltar matriz(i, j) " "
			
		FinPara
		Escribir "|"
	FinPara
	

	
FinSubAlgoritmo

//-----------------------------------------------------------------------//

Funcion salida = un_elemento(fila, columna, matriz)
	Definir salida Como Entero
	
	salida = matriz(fila-1, columna-1)
	
FinFuncion

//-----------------------------------------------------------------------//

SubAlgoritmo mostrardiagonalprincipal(matriz, orden)
	Definir i, j Como Entero
	
	para i desde 0 hasta orden - 1 Hacer
		Escribir Sin Saltar "|"
		para j desde 0 Hasta orden - 1 Hacer
			
			si i = j Entonces
				Escribir Sin Saltar matriz(i, j) " "
			SiNo
				Escribir Sin Saltar " - "
			FinSi
			
		FinPara
		Escribir "|"
	FinPara

FinSubAlgoritmo

//-----------------------------------------------------------------------//

SubAlgoritmo mostrardiagonalsecundaria(matriz, orden)
	
	Definir i, j Como Entero
	
	para i desde 0 hasta orden - 1 Hacer
		
		Escribir Sin Saltar "|"
		para j desde 0 Hasta orden - 1 Hacer
			
			si i + j = orden - 1 Entonces
				Escribir Sin Saltar matriz(i, j) " "
			SiNo
				Escribir Sin Saltar " - "
			FinSi
			
		FinPara
		Escribir "|"
	FinPara
	
FinSubAlgoritmo

//-----------------------------------------------------------------------//

SubAlgoritmo mostrarcontorno(matriz, orden)
	
	Definir i, j Como Entero
	
	para i desde 0 hasta orden - 1 Hacer
		Escribir Sin Saltar "|"
		para j desde 0 Hasta orden - 1 Hacer
			
			si i = 0 o i = orden-1 Entonces
				Escribir Sin Saltar matriz(i, j) " "
			SiNo
				si j = orden-1 o j = 0 Entonces
					
					Escribir Sin Saltar matriz(i, j) " "
				SiNo
					
					Escribir Sin Saltar "- "
					
				FinSi
			FinSi
		FinPara
		Escribir "|"
		
	FinPara
	
FinSubAlgoritmo