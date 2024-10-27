Algoritmo Final_2018
	///Entrada:N° de casiillas a moverse ingresado por el usuario, posición del pirata y del tesoro, y el tablero con sus respectivos límites (generados con una matriz de 8x8).
	///Salida:Gráfico con el tablero que indica posiciones del pirata el tesoro y el mismo tablero con sus límites ; Mensajes indicando si ganó,perdió o si debe seguir seleccionando n° a moverse.
	Definir matriz,respuesta Como caracter
	Definir m,n Como Entero
	Definir flag,seguir Como Logico
	Dimension matriz(8,8)
	seguir=Falso
	Repetir
		flag=falso
		n=1
		m=1
		MatrizBase(matriz)
		
		EscribirMatriz(matriz)
		
		Repetir
			
			juego(matriz,m,n)
			
			matriz2(matriz,m,n,flag)
			
			EscribirMatriz(matriz)
			
		Mientras Que flag = falso
		
		Escribir "Desea seguir jugando?: S/N: "
		leer respuesta
		si Mayusculas(respuesta) = "S" Entonces
			seguir=Verdadero
		SiNo
			seguir=Falso
		FinSi
	Mientras Que seguir=Verdadero
	
	Escribir "Fin del Juego, Gracias por jugar"
	
FinAlgoritmo

SubAlgoritmo  MatrizBase(matriz Por Referencia)
	Definir i, j, x, w Como Entero
	Definir var Como Logico
	Para i=0 Hasta 7 Hacer
		Para j=0 Hasta 7 Hacer
			si i=0 o j=0 o i=7 o j=7 Entonces
				matriz(i,j) = " A "
			SiNo
				matriz(i,j) = " # "
			FinSi
		FinPara
	FinPara

	matriz( Aleatorio(1,6),Aleatorio(1,6)) = " P "
	var=Falso
	Repetir
		
		x=Aleatorio(1,6)
		w=Aleatorio(1,6)
		si matriz(x,w) <> " P " Entonces
			var=Verdadero
			matriz(x,w)= " T "
		FinSi
	Mientras Que var=Falso
	
FinSubAlgoritmo

SubAlgoritmo  EscribirMatriz(matriz)
	Definir i, j Como Entero
	Para i=0 Hasta 7 Hacer
		Para j=0 Hasta 7 Hacer
				Escribir Sin Saltar matriz(i,j)
		FinPara
		Escribir " "
	FinPara
FinSubAlgoritmo

SubAlgoritmo  juego(matriz Por Referencia,m Por Referencia,n Por Referencia)
	Definir num,num2,jug como entero
	num=Aleatorio(1,5)
	Segun num Hacer
		1:	Escribir "La dirección a mover es: Arriba" 
			n=(-1)
			m=0
		2:	Escribir "La dirección a mover es: Abajo" 
			m=0
			n=1
		3:	Escribir "La dirección a mover es: Izquierda" 
			n=0 
			m=(-1)
		4:	Escribir "La dirección a mover es: Derecha" 
			n=0
			m=1
		5:	num2=Aleatorio(1,4)
			Segun num2 Hacer
				1:	Escribir "La dirección a mover es: En Diagonal_Izquierdo_Superior" 
					n=(-1)
					m=(-1)
				2:	Escribir "La dirección a mover es: En Diagonal_Derecho_Superior" 
					n=(-1)
					m=1
				3:	Escribir "La dirección a mover es: En Diagonal_Izquierdo_Inferior" 
					m=(-1)
					n=1
				4:  Escribir "La dirección a mover es: En Diagonal_Derecho_Inferior" 
					m=1
					n=1
			FinSegun
	FinSegun
	Escribir "Cuantas posiciones desea mover?: ingrese 1, 2 o 3:"
	leer jug
	n=n*jug
	m=m*jug
FinSubAlgoritmo

SubAlgoritmo  matriz2(matriz,m,n,flag Por Referencia)
	Definir i,j,k,l Como Entero
	Definir sep, eu Como Logico
	
	k=0
	l=0
	para i=0 Hasta 7
		Para j=0 Hasta 7
			si matriz(i,j)=" P " Entonces
				matriz(i,j)= " # "
				k=i
				l=j
			FinSi
		FinPara
	FinPara
	sep= Falso
	eu = Falso
	para i=k Hasta k+n Hacer
		Para j=l Hasta l+m Hacer
			si (k+n) > 6 o (l+m) > 6 o (k+n)<1 o (l+m)<1 o matriz(k,l) = " A " Entonces
				flag = Verdadero
				sep = Verdadero
			SiNo
				si matriz(k+n,l+m) = " T " Entonces
					flag = Verdadero
					eu = Verdadero
				SiNo
					matriz(k+n,l+m)=" P "
				FinSi
			FinSi
		FinPara
	FinPara
	si sep =Verdadero Entonces
		Escribir "Te fuiste :( Fin del juego"
	SiNo
		si eu= Verdadero Entonces
			Escribir "Eureka! Ganaste! Fin del juego"
		FinSi
	FinSi
FinSubAlgoritmo

	