Algoritmo Relacion5_13
	//Definimos las variables
	Definir numin1,numin2,resultado,i Como Entero; //La variable i será el contador
	//Comienza el programa.
	Escribir "Programa que muestra las tablas de multiplicar que se encuentran entre dos números introducidos por el usuario";
	Escribir Sin Saltar "Introduzca el primer número: "; //Pide datos
	Leer numin1; //Lee datos
	Escribir Sin Saltar "Introduzca el segundo número: ";//Pide datos
	Leer numin2; //Lee datos
	
	Para numin1<-numin1 Hasta numin2  //Bucle que indica que se repite desde el num1 que introduce el usuario hasta el num2
		Escribir "-----------------";
		Escribir "Tabla del ",numin1; //Muestra el texto de la tabla elegida según los números introducidos por el usuario.
		Escribir "-----------------";
		
		Para i<-1 Hasta 10 //Al contador se le asigna que empiece en el 1, y el bucle se repite hasta que llega a 10.
			resultado<-numin1*i; //La variable resultado se obtiene de la multiplicación del numero introducido por el usuario y el número del contador que toque en ese momento de entre el rango especificaco, en este caso de 1 a 10.
			Escribir ,numin1,"x",i,"=",resultado; //Se muestra por pantalla cada dato y el resultado.
			//Hola
		Fin Para
		Escribir "-----------------";
		Escribir "Siguiente tabla";   //Separa una tabla de otra, para evitar que los datos estén juntos y se vea con claridad.
		Escribir "-----------------";
	Fin Para
	//HOLA ES PRUEBA
FinAlgoritmo
