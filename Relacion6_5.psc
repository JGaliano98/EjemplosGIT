Algoritmo Relacion6_5
	//Definimos las variables
	Definir numpelis, menu, duracion, i, duracionmax Como Entero;
	Definir genero, titulo, nombre, gen, director Como Caracter;
	//Comenzamos el programa
	
	Escribir "<><><><><><><><><><><><><><><>";
	Escribir "    COLECCI�N DE PEL�CULAS ";
	Escribir "<><><><><><><><><><><><><><><>";
	
	Escribir Sin Saltar "Por favor, introduzca la cantidad de pel�culas de las que consta la colecci�n: ";
	Leer numpelis;
	
	Dimension titulo[numpelis];
	Dimension gen[numpelis];
	Dimension duracion[numpelis];
	Dimension director[numpelis];
	
	Escribir "A continuaci�n, se pedir�n los datos de las pel�culas:";
	
	Para i<-0 Hasta numpelis-1 Con Paso 1 Hacer
		Escribir "Pel�cula N� ",i+1;
		Escribir "Introduzca el t�tulo de la pel�cula: ";
		Leer titulo[i];
		Escribir "Introduzca el g�nero (T= Terror, D= Drama, C= Comedia): ";
		Leer gen[i];
		Escribir "Introduzca la duraci�n de la pel�cula (min)";
		Leer duracion[i];
		Escribir "Introduzca el nombre del director.";
		Leer director[i];
		
	Fin Para
	
	//Comienza el men�
	menu<-0; //Inicializamos la variable men� a 0.
	Limpiar Pantalla;
	Mientras menu<>3 Hacer
			Escribir "<><><><><><><><><><><><><><><><><><><><>";
			Escribir "             MEN� PRINCIPAL ";
			Escribir "<><><><><><><><><><><><><><><><><><><><>";
			Escribir "----------------------------------------";
			Escribir "Escoja una de las siguientes opciones: ";
			Escribir "----------------------------------------";
			Escribir "1. Buscar pel�culas por g�nero.";
			Escribir "2. Buscar pel�culas por duraci�n (min).";
			Escribir "3. Salir del men� y finalizar programa.";
			Leer menu;
			Segun menu Hacer
				1:
					Escribir "--------------------------------------------";
					Escribir "Usted ha elegido buscar pel�culas por g�nero";
					Escribir "--------------------------------------------";
					Escribir "Por favor, elija una de las siguientes opciones: ";
					Escribir "Opci�n T : Terror";
					Escribir "Opci�n D : Drama";
					Escribir "Opci�n C : Comedia";
					Leer genero;
					
					Segun genero Hacer
						"T":
							Escribir "---------------------------------------------";
							Escribir "Usted ha elegido pel�culas del g�nero Terror.";
							Escribir "---------------------------------------------";
							Escribir "La lista de pel�culas es: ";
						"D":
							Escribir "--------------------------------------------";
							Escribir "Usted ha elegido pel�culas del g�nero Drama.";
							Escribir "--------------------------------------------";
							Escribir "La lista de pel�culas es: ";
						"C":
							Escribir "----------------------------------------------";
							Escribir "Usted ha elegido pel�culas del g�nero Comedia.";
							Escribir "----------------------------------------------";
							Escribir "La lista de pel�culas es: ";
						De Otro Modo:
							Escribir "---------------------------------------------------------------------------";
							Escribir "El g�nero introducido no es v�lido, por favor, introduzca un g�nero v�lido.";
							Escribir "---------------------------------------------------------------------------";
					Fin Segun
				2:
					Escribir "Ha elegido buscar pel�culas por duraci�n (min).";
					Escribir "Por favor, introduzca la duraci�n m�xima deseada (min)";
					Leer duracionmax;
					
					Para i<-0 Hasta numpelis-1 Con Paso 1 Hacer
						Si duracion[i]<= duracionmax Entonces
							Escribir "T�tulo de la pel�cula: ",titulo[i],", G�nero: ",gen[i],", Duraci�n: ",duracion[i],", Nombre del director: ",director[i];
							
						Fin Si
					Fin Para
					
					
			Fin Segun
		Fin Mientras
FinAlgoritmo
