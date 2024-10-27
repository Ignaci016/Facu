Algoritmo TP3_10

///Entrada:
	//cantidad de unidades del producto en descuento
///Procesamiento:
	//calcular cuantas docenas se compraron, aplicar el descuento de 10% 
	//si se compraron menos de 3 docenas o del 15% si se compró mas de 3 docenas y agregar 
	//un producto extra por cada docena superada 
///Salida:
	//monto de la compra, monto del descuento, monto a pagar y número de unidades de obsequio	
	
	
	Definir Cant_prod, Prod_extra Como Entero
	Definir Docenas, Precio_ini, Total, Precio_Fin, precioUnidad, Descuento Como Real
	
	Escribir "Ingrese la cantidad de productos comprados"
	Leer Cant_prod
	Escribir "Ingrese el precio por unidad"
	Leer precioUnidad
	
	Precio_ini = Cant_prod * precioUnidad
	
	Docenas = Cant_prod / 12
	Docenas = trunc(Docenas)
	
	si Docenas < 3 Entonces
		Precio_Fin = Precio_ini - (10*Precio_ini)/100
		Descuento = Precio_ini - Precio_Fin
		Prod_extra = 0
	SiNo
		Precio_Fin = Precio_ini - (15*Precio_ini)/100
		Descuento = Precio_ini - Precio_Fin
		
		Prod_extra = Docenas
	FinSi
	
	Escribir "El precio inicial era: $" Precio_ini
	Escribir "El descuento es de : $" Descuento
	Escribir "El monto final es: $" Precio_Fin
	Escribir "Los productos obsequiados serán: " Prod_extra
	
FinAlgoritmo
