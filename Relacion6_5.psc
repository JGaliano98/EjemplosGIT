Algoritmo Relacion6_5
	//Definimos las variables
	Definir numpelis, menu, duracion, i, duracionmax Como Entero;
	Definir genero, titulo, nombre, gen, director Como Caracter;
	//Comenzamos el programa
	
	Escribir "<><><><><><><><><><><><><><><>";
	Escribir "    COLECCIÓN DE PELÍCULAS ";
	Escribir "<><><><><><><><><><><><><><><>";
	
	Escribir Sin Saltar "Por favor, introduzca la cantidad de películas de las que consta la colección: ";
	Leer numpelis;
	
	Dimension titulo[numpelis];
	Dimension gen[numpelis];
	Dimension duracion[numpelis];
	Dimension director[numpelis];
	
	Escribir "A continuación, se pedirán los datos de las películas:";
	
	Para i<-0 Hasta numpelis-1 Con Paso 1 Hacer
		Escribir "Película Nº ",i+1;
		Escribir "Introduzca el título de la película: ";
		Leer titulo[i];
		Escribir "Introduzca el género (T= Terror, D= Drama, C= Comedia): ";
		Leer gen[i];
		Escribir "Introduzca la duración de la película (min)";
		Leer duracion[i];
		Escribir "Introduzca el nombre del director.";
		Leer director[i];
		
	Fin Para
	
	//Comienza el menú
	menu<-0; //Inicializamos la variable menú a 0.
	Limpiar Pantalla;
	Mientras menu<>3 Hacer
			Escribir "<><><><><><><><><><><><><><><><><><><><>";
			Escribir "             MENÚ PRINCIPAL ";
			Escribir "<><><><><><><><><><><><><><><><><><><><>";
			Escribir "----------------------------------------";
			Escribir "Escoja una de las siguientes opciones: ";
			Escribir "----------------------------------------";
			Escribir "1. Buscar películas por género.";
			Escribir "2. Buscar películas por duración (min).";
			Escribir "3. Salir del menú y finalizar programa.";
			Leer menu;
			Segun menu Hacer
				1:
					Escribir "--------------------------------------------";
					Escribir "Usted ha elegido buscar películas por género";
					Escribir "--------------------------------------------";
					Escribir "Por favor, elija una de las siguientes opciones: ";
					Escribir "Opción T : Terror";
					Escribir "Opción D : Drama";
					Escribir "Opción C : Comedia";
					Leer genero;
					
					Segun genero Hacer
						"T":
							Escribir "---------------------------------------------";
							Escribir "Usted ha elegido películas del género Terror.";
							Escribir "---------------------------------------------";
							Escribir "La lista de películas es: ";
						"D":
							Escribir "--------------------------------------------";
							Escribir "Usted ha elegido películas del género Drama.";
							Escribir "--------------------------------------------";
							Escribir "La lista de películas es: ";
						"C":
							Escribir "----------------------------------------------";
							Escribir "Usted ha elegido películas del género Comedia.";
							Escribir "----------------------------------------------";
							Escribir "La lista de películas es: ";
						De Otro Modo:
							Escribir "---------------------------------------------------------------------------";
							Escribir "El género introducido no es válido, por favor, introduzca un género válido.";
							Escribir "---------------------------------------------------------------------------";
					Fin Segun
				2:
					Escribir "Ha elegido buscar películas por duración (min).";
					Escribir "Por favor, introduzca la duración máxima deseada (min)";
					Leer duracionmax;
					
					Para i<-0 Hasta numpelis-1 Con Paso 1 Hacer
						Si duracion[i]<= duracionmax Entonces
							Escribir "Título de la película: ",titulo[i],", Género: ",gen[i],", Duración: ",duracion[i],", Nombre del director: ",director[i];
							
						Fin Si
					Fin Para
					
					
			Fin Segun
		Fin Mientras
FinAlgoritmo
