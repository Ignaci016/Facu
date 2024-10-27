Algoritmo LigaOnline
	Definir nombreLiga, nombreEquipos Como Caracter
	definir cantEquipos, tabla Como Entero
	
	Escribir "Ingrese el nombre de la Liga"
	leer nombreLiga
	
	Hacer
		Escribir "Ingrese la cantidad de equipos"
		leer cantEquipos
	Mientras Que cantEquipos <= 1
	
	Dimension nombreEquipos(cantEquipos)
	Dimension tabla(cantEquipos,4)	
	
	cargarEquipos(nombreEquipos, cantEquipos)
	inicializarTabla(tabla, cantEquipos)
	cargarPartidos(nombreEquipos,cantEquipos,tabla,nombreLiga)
			
FinAlgoritmo


SubProceso cargarEquipos(nombreEquipos, cantEquipos)
	Definir i Como Entero
	
	para i=0 Hasta cantEquipos-1 Hacer
		Escribir "ingrese el nombre del Equipo Nº " i+1
		leer nombreEquipos(i)
	FinPara	
	
FinSubProceso

SubProceso inicializarTabla(tabla, cantEquipos)
	Definir i,j Como Entero
	
	para i=0 Hasta cantEquipos-1 Hacer
		para j=0 hasta 3 Hacer
			tabla(i,j) = 0
		FinPara		
	FinPara	
	
FinSubProceso

SubProceso cargarPartidos(nombreEquipos,cantEquipos,tabla,nombreLiga)
	Definir i,j,golesEquipo1, golesEquipo2 Como Entero
	para i=0 hasta cantEquipos-2
		para j=i+1 hasta cantEquipos-1
			Escribir "Partido: " nombreEquipos(i) " - " nombreEquipos(j) 
			
			Escribir "Ingrese la cantidad de goles que hizo " nombreEquipos(i)
			leer golesEquipo1
			
			Escribir "Ingrese la cantidad de goles que hizo " nombreEquipos(j)
			leer golesEquipo2
			
			cargarResultado(tabla,i,golesEquipo1,golesEquipo2)
			cargarResultado(tabla,j,golesEquipo2,golesEquipo1)
			
		FinPara
	FinPara	
	mostrarResultados(tabla,nombreEquipos,cantEquipos,nombreLiga)
	
FinSubProceso

SubProceso cargarResultado(tabla, equipo, golesFavor, golesContra)
	si golesFavor > golesContra Entonces
		tabla(equipo,0) = tabla(equipo,0) + 3
	sino 
		si golesFavor = golesContra Entonces
			tabla(equipo,0) = tabla(equipo,0) + 1
		FinSi
	FinSi
	tabla(equipo,1) = tabla(equipo,1) + golesFavor
	tabla(equipo,2) = tabla(equipo,2) + golesContra
	tabla(equipo,3) = tabla(equipo,3) + (golesFavor-golesContra)
	
FinSubProceso

SubProceso mostrarResultados(tabla,nombreEquipos,cantEquipos,nombreLiga)
	Definir i,j Como Entero
	Escribir "Nombre de Liga: " nombreLiga
	
	para i= 0 Hasta cantEquipos-1
		Escribir Sin Saltar nombreEquipos(i) "   "
		para j=0 hasta 3
			
			si j = 3 y tabla(i,j) > 0 Entonces
				Escribir Sin Saltar "+" tabla(i,j) "    "
			SiNo
				Escribir Sin Saltar tabla(i,j) "    "
			FinSi					
		FinPara
		Escribir ""
	FinPara
	
FinSubProceso


	