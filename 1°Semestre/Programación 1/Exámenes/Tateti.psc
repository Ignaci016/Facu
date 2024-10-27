////////////////////////////////////////////////////////////////////////
/// Enunciado:
/// Realizar un programa en PseInt que resuelva una partida del juego del "Ta-Te-Ti". Un resumen de las reglas del
/// juego son las siguientes:
///     1. El tablero es de 3x3 y cualquier cuadrícula podrá estar vacía u ocupada sólo por una cruz (X en rojo en el
///       dibujo) o un círculo (O en azul en el dibujo).
///     2. Los jugadores juegan por turnos colocando una figura por vez en el tablero. No es importante si comienzan
///		las cruces o los círculos.
///		3. Cada casillero es ocupado una vez por un jugador en la partida y no es posible cambiar dicho valor.
///		4. Hay un ganador cuando uno de los 2 jugadores forma Ta-Te-Ti, es decir, 3 valores del mismo tipo en
///		horizontal, vertical o diagonal. Puede darse el caso que haya un empate o no haya ganador. No es necesario
///		completar el tablero completo para saber si hay un ganador o no.
///
///      El programa debe permitir cargar los valores de los competidores, alternando los turnos, y debe determinar si
///      algún jugador ha ganado la partida, o si ha habido un empate. En caso de completar el tablero y que no haya
///      habido ningún ganador se debe mostrar un mensaje.
/////////////////////////////////////////////////////////////////////////////

///////////////////////////////////////////////////////////////////////////////
/// Entradas: Cada jugador de formal alternada indica la posición en el tablero
///           por fila y columna donde desea colocar su ficha.
/// Salidas: Se indica si un jugador formo tateti, además se indica si el juego
///          finalizó. Entre jugada y jugada se muestra como va quedando el tablero
////////////////////////////////////////////////////////////////////////////7///

Algoritmo Tateti
	
	//Definimos las variables que determinan la ficha y numero de jugador
	//Definimos la variable que se utilizara para finalizar el juego
	Definir ficha Como Caracter
	Definir numeroJugador Como Entero
	Definir finalizarJuego, jugadorGanador Como Logico
	Definir cantidadJugada Como Entero
	
	//Definimos el tablero
	Definir tablero Como Caracter
	
	//Dimensionamos
	Dimension tablero(3,3)
	
	//Inicializamos el tablero
	cantidadJugada=0
	jugadorGanador=FALSO
	inicializartablero(tablero)
	
	//Mostramos el tablero
	Escribir "Comienza el Juego."
	Escribir ""
	mostrarTablero(tablero)
	
	//Iniciamos el juego
	Hacer
		
		cantidadJugada = cantidadJugada + 1
		finalizarJuego= VERDADERO
		
		//Si existe lugar disponible en el tablero para colocar ficha
		//solicitamos al usuario.
		Si existeLugarDisponibleEnTablero(tablero) Entonces
			
			//Se coloca el indicativo de finalizar el juego en Falso
			//para que el juego no termine al finalizar la presente jugada
			finalizarJuego= FALSO
			
			//Determino quien es el jugador que tiene turno
			numeroJugador = 1
			ficha="X"
			Si cantidadJugada = 2 Entonces
				numeroJugador = 2
				ficha="O"
			FinSi
			
			Escribir "TURNO Jugador N°:" numeroJugador
			
		    //Solicitamos la posición en el tablero
		    solicitarPosicionEnTablero(tablero, ficha)
			
		    //Mostramos el tablero
		    mostrarTablero(tablero)
			
			//Verificamos si existe tateti en el tablero
			Si existeTateti(tablero, ficha) Entonces
				jugadorGanador=Verdadero
				Escribir ""
				Escribir "FELICITACIONES!!!"
				Escribir "Jugador N°:" numeroJugador " formó TA-TE-TI."
				Escribir ""
		    FinSi	   
			
		FinSi
		
		//Si la cantidad de jugadas es 2 significa que los dos
		//jugadores realizaron su jugada, también podría realizarse
		//con una función esJugadaPar
		Si cantidadJugada = 2 Entonces
			
			//Si los dos jugadores colocaron sus ficha
			//y existe un ganador o los dos ganadores Entonces
			//finalizamos el juego
			Si jugadorGanador Entonces
				finalizarJuego= VERDADERO
			FinSi
		    
			//Una vez realizada las dos jugadas la cantidad comienza nuevamente de 0
		    cantidadJugada = 0
			
		FinSi
		
	Mientras Que finalizarJuego = FALSO
	
	Escribir ""
	Escribir "El juego finalizó."
	
FinAlgoritmo

///////////////////////////////////////////////////////////////////////////
/// Descripción: SubProceso que se encarga de inicializar el tablero
///             con todos su valores en ""
///////////////////////////////////////////////////////////////////////////
SubProceso inicializartablero(tablero)
	
	//Definimos el itereador del bucle para y lo inicializamos desde
	//donde comenzará
	Definir i,j Como Entero
	
	//Recorremos el vector y asignamos posición por posición el valor ""
	Para i=0 Hasta 2 Hacer
		Para j=0 Hasta 2 Hacer
			tablero(i,j) = ""	
		FinPara
	FinPara
	
FinSubProceso

////////////////////////////////////////////////////////////////////
/// Descripción: SubProceso que se encarga de mostrar los valores de
///              del tablero por pantalla. Recibe la cantidad de filas
///              y columnas para poder recorrerla.
///////////////////////////////////////////////////////////////////
SubProceso mostrarTablero(tablero)
	
	//Definimos los itereadores del bucle Para
	//que recorrerá la matriz
	Definir i, j Como Entero
	
	//Recorremos la matriz y mostramos por pantalla el contenido de cada
	//una de sus posiciones.
	Para i = 0 Hasta 2  Hacer
		Para j = 0 Hasta 2 Hacer
			Escribir "[" tablero(i,j) "]" Sin Saltar	
		FinPara
        Escribir " " 
	FinPara
	Escribir " "
	
FinSubProceso

///////////////////////////////////////////////////////////////////////////
/// Descripción: SubProceso que solicitar la posición en el tablero
///////////////////////////////////////////////////////////////////////////
SubProceso solicitarPosicionEnTablero(tablero, ficha)
	
	//Declaramos las variables que se utilizan para indicar  fila, columna
	//y si es necesario solicitar nuevamente los datos al usuario
	Definir repetirSoliciud Como Logico
	Definir fila, columna Como Entero
	
	//Solicitamos al usuario que indique la posición en el tablero que colocara
	//su ficha, además validamos que la posición no se encuentre fuera del tablero
	//y que no se encuentre ocupada por una jugada previa
	Hacer
		
		Escribir "Ingrese la Posición (fila,columna) en el tablero para su ficha " ficha "."
		Escribir "Fila y Columna deben ser valores mayores que cero y menores que 3."
		Escribir ""
		
		Escribir "Indicar Posición Fila:"
		leer fila
		
		Escribir "Indicar Posición Columna:"
		leer columna
		
		repetirSoliciud=FALSO
		Si fila < 1 o fila > 3 o columna < 1 y columna > 3 Entonces
			Escribir "El valor ingresado es incorrecto. Ingrese un valor entre 0 y 3 para las posiciones."
			Escribir ""
			repetirSoliciud=VERDADERO	
		SiNo
			
			Si tablero(fila-1, columna-1) <> "" Entonces
				Escribir "La posición indicada ya fue seleccionada previamente."
				Escribir ""
				repetirSoliciud=VERDADERO
			SiNo
				tablero(fila-1, columna-1) = ficha
			FinSi
			
		FinSi	
		
	Mientras Que repetirSoliciud
	
FinFuncion

///////////////////////////////////////////////////////////////////////////
/// Descripción: Función que se encarga de verificar si existe lugar 
///             disponible para colocar ficha en el tablero
///////////////////////////////////////////////////////////////////////////
Funcion existeLugar <- existeLugarDisponibleEnTablero(tablero)
	
	//Definimos el itereador del bucle para y lo inicializamos desde
	//donde comenzará
	Definir i,j Como Entero
	Definir existeLugar Como Logico
	
	//Inicializamos
	existeLugar= FALSO
	
	//Recorremos el tablero para verificar si existe lugar disponible
	//para posicionar
	Para i=0 Hasta 2 Hacer
		Para j=0 Hasta 2 Hacer
			Si tablero(i, j) = "" Entonces	
				existeLugar = VERDADERO	
			FinSi	
		FinPara
	FinPara
	
FinFuncion

////////////////////////////////////////////////////////////////////
/// Descripción: SubProceso que se encarga de mostrar los valores de
///              del tablero por pantalla. Recibe la cantidad de filas
///              y columnas para poder recorrerla.
///////////////////////////////////////////////////////////////////
Funcion esTateti <- existeTateti(tablero, ficha)
	
	//Definimos la variable que se retorna
	Definir esTateti Como Logico
	
	//Inicializamos
	esTateti = FALSO
	
	//verificamos si existe tateti, con que exista en alguna fila o columna o en alguna de las dos diagonales
	//entonces tenemos tateti
	Si verificarFilas(tablero, ficha) o verificarColumnas(tablero, ficha) o verificarDiagonalPrincipal(tablero, ficha) o verificarDiagonalSecundaria(tablero, ficha) Entonces
		esTateti = Verdadero
	FinSi
	
FinFuncion

////////////////////////////////////////////////////////////////////
/// Descripción: Función calcula la sumatoria de una fila indicada
///              
///////////////////////////////////////////////////////////////////
Funcion esTateti <- verificarFilas(tablero, ficha)
	
	//Definimos los iteradores y la variable que contendrá la sumatoria de las fichas
	Definir i, j, contador Como Entero
	Definir esTateti Como Logico
	
	//Inicializamos
	contador=0
	esTateti=FALSO
	
	//Recorremos el tablero por fila y analizamos al finalizar el recorrido
	//de cada una si existe ta-te-ti
	Para i=0 Hasta 2 Hacer
		
	    Para j=0 Hasta 2 Hacer
			Si tablero(i,j) = ficha Entonces
				contador = contador + 1	
			FinSi
	    FinPara 
		
		Si contador = 3 Entonces
			esTateti=VERDADERO	
		FinSi
		
		contador = 0
		
	FinPara
	
FinSubProceso

////////////////////////////////////////////////////////////////////
/// Descripción: Función que verifica si existe diagonal secundaria
///              con ta-te-ti             
///////////////////////////////////////////////////////////////////
Funcion esTateti <- verificarColumnas(tablero, ficha)
	
	//Definimos los iteradores y la variable que contendrá la sumatoria de las fichas
	Definir i, j, contador Como Entero
	Definir esTateti Como Logico
	
	//Inicializamos
	contador=0
	esTateti=FALSO
	
	//Recorremos el tablero por columnas y analizamos al finalizar el recorrido
	//de cada una si existe ta-te-ti
	Para i=0 Hasta 2 Hacer
		
	    Para j=0 Hasta 2 Hacer
			Si tablero(j,i) = ficha Entonces
				contador = contador + 1	
			FinSi
	    FinPara 
		
		Si contador = 3 Entonces
			esTateti=VERDADERO	
		FinSi
		
		contador = 0
		
	FinPara
	
FinSubProceso

////////////////////////////////////////////////////////////////////
/// Descripción: Función que verifica si existe diagonal secundaria
///              con ta-te-ti
///////////////////////////////////////////////////////////////////
Funcion esTateti <- verificarDiagonalPrincipal(tablero, ficha)
	
	//Definimos los iteradores y la variable que contendrá la sumatoria de las fichas
	Definir i, j, contador Como Entero
	Definir esTateti Como Logico
	
	//Inicializamos
	contador=0
	esTateti=FALSO
	
	//Recorremos el cuadrado y realizamos la sumatoria por la diagonal
	//principal, cuando i=j
	Para i=0 Hasta 2 Hacer
		Para j=0 Hasta 2 Hacer
			Si i=j y tablero(i,j) = ficha Entonces
				contador = contador + 1
			FinSi
		FinPara
	FinPara
	
	Si contador = 3 Entonces
		esTateti=VERDADERO	
	FinSi
	
FinSubProceso
////////////////////////////////////////////////////////////////////
/// Descripción: Función que verifica si existe diagonal secundaria
///              con ta-te-ti
///////////////////////////////////////////////////////////////////
Funcion esTateti <- verificarDiagonalSecundaria(tablero, ficha)
	
	//Definimos los iteradores y la variable que contendra la sumatoria de las fichas
	Definir i, columna, contador Como Entero
	Definir esTateti Como Logico
	
	//Inicializamos
	contador=0
	esTateti=FALSO
	
	//Recorremos el tablero en su diagonal secundaria para determinar
	//si existe tateti
	columna = 2
	Para i=0 Hasta 2 Hacer
		Si tablero(i,columna) = ficha Entonces
			contador = contador + 1
		FinSi
		columna = columna-1
	FinPara
	
	Si contador = 3 Entonces
		esTateti=VERDADERO	
	FinSi
	
FinSubProceso

