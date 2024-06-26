#! /bin/bash
#Entrega Renzo Macchi - 332716

opcion=-1

linea(){
	echo "====================";
}

continuar(){
	echo "Enter para continuar";
	read enter;
}

opcion1(){
	linea
	echo "Ingrese dos numeros";
	read valor1;
	read valor2;
	resultado=$(($valor1 + $valor2));
	echo "La suma es $resultado";
	continuar
}

opcion2(){
	linea
	echo "Ingrese dos numeros";
	read valor1;
	read valor2;
	resultado=$(($valor1 * $valor2));
	echo "El producto es $resultado";
	continuar
}

opcion3(){
	linea
	echo "Ingrese el nombre del personaje"
	read personaje
	echo "Ingrese el nombre de un objeto que encuentra"
	read objeto
	echo "Ingrese lo que el objeto hace"
	read utilidad
	echo "Ingrese lo que el personaje va a hacer con el objeto"
	read uso
	echo "Ingrese otro personaje"
	read personaje2
	echo "Habia una vez dos personas llamadas $personaje y $personaje2 que estaban explorando el bosque cuando encontraron un/a $objeto, al principio no sabian que era pero luego entendieron que $utilidad y $personaje decidio $uso a $personaje2 pero este lo detubo antes de que lo/a $uso. FIN";
	continuar
}

opcion4(){
	linea
	echo "Ingrese un numero mayor a 0"
	read entero
	resultado=$entero
	while [ $entero -gt 2 ]; do
		entero=$(($entero - 1));
		resultado=$(($resultado * ($entero)));
	done
	if [[ $entero -eq 0 ]];
	then
		resultado=1;
	fi
	echo "El factorial es $resultado"
	continuar
}

menu(){
	linea
	echo "1 - Suma";
	echo "2 - Multiplicacion";
	echo "3 - Crear Historia";
	echo "4 - Factorial";
	echo "--------------------";
	echo "0 - salir";
	linea
}

while [ true ]; do
	menu
	read opcion;
	case $opcion in
		0) echo "saliendo" ; exit 0 ;;
		1) opcion1 ;;
		2) opcion2 ;;
		3) opcion3 ;;
		4) opcion4 ;;
		*) echo "invalido" ;;
	esac
done