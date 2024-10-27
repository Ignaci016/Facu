Algoritmo Global2MoyaJuanIgnacio
	///Moya Juan Ignacio
	///Entrada:Se ingresa la cantidad de jugadores, luego se ingresan las jugadas realizadas por cada uno durante el juego.
	///Salida:Se imprime un mensaje indicando el ganador o si es un juego desierto(sin ganadores).
	Definir CantJugadores,i,j,matriz Como Entero
	Definir Ganador Como Logico
	Escribir "Ingrese la cantidad de jugadores"
	leer CantJugadores
	Dimension matriz(CantJugadores,11)
	para i=0 Hasta CantJugadores-1 Hacer
		para j=0 Hasta 10
			si j=0 Entonces
				matriz(i,j)=i+1
			SiNo
				si j=1 Entonces
					matriz(i,j)=Aleatorio(1,12)
				SiNo
					matriz(i,j)=0
				FinSi
			FinSi
		
		FinPara
	FinPara
	Escribir "Jugador--|--------------Jugada"
	para i=0 Hasta CantJugadores-1 Hacer
		para j=0 Hasta 10
			Escribir Sin Saltar "  [" matriz(i,j) "]     "
		FinPara
		Escribir ""
	FinPara
	Suma(CantJugadores,matriz)
	encontrarGanador(matriz,CantJugadores)
FinAlgoritmo

SubProceso Suma(CantJugadores,matriz)
	Definir i,j,k,l,resul Como Entero
	Definir pedir Como Caracter
	Para i=0 Hasta CantJugadores-1
			j=2
			Repetir
				Escribir "Jugador: " i+1 " Desea pedir un nuevo valor?(S/N)"
				leer pedir
				si Mayusculas(pedir)="S" Entonces
					resul=matriz(i,j-1)+Aleatorio(1,12)
					matriz(i,j)=resul
					si resul>21 Entonces
						Escribir "Se pasó"
					FinSi
				FinSi
				para k=0 Hasta CantJugadores-1 Hacer
					para l=0 Hasta 10
						Escribir Sin Saltar "  [" matriz(k,l) "]     "
					FinPara
					Escribir ""
				FinPara
				j=j+1
				
			Mientras que Mayusculas(pedir)="S" y resul<21
		FinPara
		
FinSubProceso

SubProceso encontrarGanador(matriz,CantJugadores)
	Definir i,j Como Entero
	para i=0 Hasta CantJugadores-2 Hacer
		para j=2 Hasta 10 Hacer
			si matriz(i,j)<22 o matriz(i+1,j)<22 Entonces
				si matriz(i,j)<matriz(i+1,j) Entonces
					Escribir "El ganador es el jugador:" i+1
				SiNo
					si matriz(i,j)=matriz(i+1,j)Entonces
						Escribir "Juego desierto"
					FinSi
				FinSi
			SiNo
				Escribir "El ganador es el jugador: " i+2
			FinSi
		FinPara
	FinPara
FinSubProceso
