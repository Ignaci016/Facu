Algoritmo Ej03
	///Entrada:El programa genera tiradas de un dado y el usuario elije la cant de jugadas que quiera realizar
	///Salida:Se muestran por pantalla cada jugada realizada y el porcentaje de jugadas ganadoras
	Definir n,i,j,k,dado,suma1,suma2,porcentaje Como Entero
	Escribir "Ingrese la cant de jugadas que quiere realizar"
	Dimension dado(5)
	suma1=0
	suma2=0
	porcentaje=0
	leer n 
	para i=1 Hasta n Hacer
		para j=0 Hasta 4 Hacer
			dado(j)=Aleatorio(1,6)
			si j=0 o j=1  Entonces
				suma1=suma1 + dado(j)
			SiNo
				suma2=suma2 + dado(j)
			FinSi
		FinPara
		Escribir ">>juego(" i ")"
		escribir "dado = "
		para k=0 Hasta 4 Hacer
			escribir Sin Saltar " " dado(k) " "
		FinPara
		Escribir ""
		escribir "sumas = [" suma1 ", " suma2 "]"
		si suma1 = suma2 Entonces
			escribir "respuesta= 1" 
			porcentaje=porcentaje+1
		SiNo
			escribir "respuesta= 0"
		FinSi
	FinPara
	Escribir (porcentaje/n)*100 "% de juegos ganados"
FinAlgoritmo
