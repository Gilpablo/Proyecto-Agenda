Algoritmo Buscador_palabras
	Definir  text , palabra Como Caracter ;
	Definir  i , contador Como Entero ;
	contador = 0
	Escribir  Sin Saltar "Introduce una cadena:" ;
	Leer  text ;
	Repetir
		Escribir  Sin Saltar "Introduce un carácter:" ;
		Leer palabra;
	Hasta Que Longitud(palabra) = 1;

	Para posicion=0 Hasta Longitud(text)-1  Con Paso 1 Hacer
		si Subcadena(text, i, i) = palabra Entonces
			contador=contador+1;
		FinSi
	Fin Para

	Escribir  "En la cadena " , text , " aparecen " , contador , " veces el carácter " , palabra , "." ;
FinAlgoritmo
