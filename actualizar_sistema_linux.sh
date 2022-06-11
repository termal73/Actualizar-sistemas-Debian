#!/bin/bash

clear

echo "Vamos a actualizar el sistema"

nombre=$(whoami)

sleep 2

clear

function accion() {

echo ¿"Que desea hacer?"

echo "1. Actualizar repositorios"

echo "2. Actualizar sistema"

echo "3. Actualizar todo"

read actualizar

if [[ $actualizar == "1" ]]; then

	clear
	sudo apt-get update
 
elif [[ $actualizar == "2" ]]; then

	clear
	sudo apt upgrade -y

elif [[ $actualizar == "3" ]]; then

	clear
	sudo apt update & sudo apt upgrade -y
else 
	echo "Lo siento $nombre, esta opcion no esta en la lista, vuelve a elegir "
	sleep 2
	clear
	accion
fi
}

accion
