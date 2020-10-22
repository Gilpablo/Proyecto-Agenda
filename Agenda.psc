Algoritmo agenda
	
	Definir requisitos, telefono, vnombres, nombre, aux, nombuscar, nomeditar, nomeditar_final Como Caracter;
	Definir num, tam, i, j Como Entero;
	Definir encontrado Como Logico;
	
	requisitos="1-Anadir contactos, 2-Buscar, 3-Editar, 4-Eliminar, 5-Ver todos los contactos, 6-Salir";
	
	i=0;
	tam=10;
	Dimension vnombres[tam];
	
	Para i=0 Hasta tam-1 Con Paso 1 Hacer
		vnombres[i]="";
	Fin Para
	
	Repetir
		Escribir requisitos;
		Leer num;
		Segun num Hacer
			1:
				Escribir "Dime el nombre del contacto que quieres añadir";
				Leer nombre;
				Escribir "Dime su telefono";
				Leer telefono;
				aux=nombre+ "i" + telefono;
				Para i=0 Hasta tam-1 Con Paso 1 Hacer
					si vnombres[i]=="" Entonces
						vnombres[i]=aux;
						i=tam;
					FinSi
				FinPara
				Escribir "Contacto guardado";
				
			2:
				encontrado = falso;
				Escribir "Dime el nombre que quieres buscar";
				
				Leer nombuscar;
				Para i=0 Hasta tam-1 Con Paso 1 Hacer
					aux=vnombres[i];
					Para j=0 Hasta Longitud(aux) Con Paso 1 Hacer
						si Subcadena(aux,i,i)=="" Entonces
							nombre=Subcadena(aux,0,j-1);
							telefono=Subcadena(aux,j+1,Longitud(aux));
						FinSi
					Fin Para
					si nombre==nombuscar Entonces
						Escribir "El nombre es " nombre " y su telefono es " telefono;
						encontrado = Verdadero;
					FinSi
				Fin Para
				
				Si encontrado == falso Entonces
					Escribir "El contacto no existe";
				FinSi
				
			3:
				Escribir "Dime el nombre que quieres editar";
				Leer nomeditar;
				Para i=0 Hasta tam-1 Con Paso 1 Hacer
					aux=vnombres[i];
					Para j=0 Hasta Longitud(aux) Con Paso 1 Hacer
						si Subcadena(aux,i,i)=="" Entonces
							nombre=Subcadena(aux,0,j-1);
							telefono=Subcadena(aux,j+1,Longitud(aux));
						FinSi
					Fin Para
					si nombre==nomeditar Entonces
						Escribir "Como lo quieres editar";
						Leer nomeditar_final;
						nombre=nomeditar_final;
						Escribir "Has editado el nombre del contacto a " nombre;
					FinSi
				Fin Para
				
				
			4:
				Escribir "Dime el nombre que quieres eliminar";
				
			5:
				Escribir "Ver todos los contactos";
				Para j=0 Hasta Longitud(aux) Con Paso 1 Hacer
					si Subcadena(aux,i,i)=="" Entonces
						nombre=Subcadena(aux,0,j-1);
						telefono=Subcadena(aux,j+1,Longitud(aux));
					FinSi
				Fin Para
				Escribir nombre ";" telefono;
		Fin Segun
	Hasta Que num==6
	
	
FinAlgoritmo
