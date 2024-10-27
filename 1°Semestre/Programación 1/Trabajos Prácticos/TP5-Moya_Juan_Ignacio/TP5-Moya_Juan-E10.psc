Algoritmo TP5_E10
	///entrada:Selección de los usuarios "A" y "B"(piedra, papel o tijera) según el n°(1,2 o 3)respectivamente
	///salida:si el valor ingresado es valido o no y si algún jugador ganó la ronda o si hubo empate, así hasta que algún jugador gane 3 rondas y salte el mensaje de qué jugador ganó, junto con las rondas ganadas por el mismo, y si hubo empates.
	Definir n,J1,J2,J1T,J2T,i,cont1,cont2,contE Como real
	J1T=0
	J2T=0
	cont1=0
	cont2=0
	contE=0
	Repetir
		para i=1 Hasta 2 Hacer
			Escribir "jugador " i " ingrese su jugada: (piedra, papel o tijera) según el n°(1,2 o 3)respectivamente"
			Repetir
				leer n
				si n-trunc(n)=0 y n>=1 y n<=3 Entonces
					Escribir "valor válido."
				SiNo
					Escribir "valor inválido, ingrese nuvamente."
				FinSi
			Mientras Que n-trunc(n)<>0 y n<1 o n>3
			Segun n Hacer
				1:	si i =1 Entonces
						J1=1
					SiNo
						J2=1
					FinSi
				2:	si i =1 Entonces
						J1=2
					SiNo
						J2=2
					FinSi
				3:	si i =1 Entonces
						J1=3
					SiNo
						J2=3
					FinSi
			FinSegun
		FinPara
		si J1 = J2 Entonces
			Escribir "Empate"
			contE=contE+1
		SiNo
			Segun J1 Hacer
				1:	si J2 =2 Entonces
						J2T=J2T+1
						cont2=cont2+1
					SiNo
						J1T=J1T+1
						cont1=cont1+1
					FinSi
				2:	si J2 =3 Entonces
						J2T=J2T+1
						cont2=cont2+1
					SiNo
						J1T=J1T+1
						cont1=cont1+1
					FinSi
				3:	si J2 =1 Entonces
						J2T=J2T+1
						cont2=cont2+1
					SiNo
						J1T=J1T+1
						cont1=cont1+1
					FinSi
			FinSegun
		FinSi
	Mientras Que J1T<3 y J2T<3
	si J1T=3 Entonces
		Escribir "Ganador del juego el jugador A"
		Escribir "Cantidad de rondas ganadas: " cont1
		Escribir "Cantidad de empates: " contE
	SiNo
		Escribir "Ganador del juego el jugador B"
		Escribir "Cantidad de rondas ganadas: " cont2
		Escribir "Cantidad de empates: " contE
	FinSi
FinAlgoritmo