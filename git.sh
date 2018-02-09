#! /bin/bash
echo "Tienes instalado git: si o no"
read instalado
if [ "$instalado" = no ]; then

	apt install git
	clear

	echo "Usuario de git:"
	read User
	git config --global user.name $User

	echo "Email de git:"
	read Email
	git config --global user.email $Email

	git init

	
		echo "Añadir un repositorio a github:"
		read repositorio

		git remote add origin $repositorio


	git pull origin master


else
echo "Tienes añadido un repositorio: si o no"
read anadido
if [ "$anadido" = no ]; then
	echo "Añadir un repositorio a github:"
	read repositorio

	git remote add origin $repositorio
	git pull -u origin master

else
	git init
	git add .

	echo "Nombre de consolidación:"
	read consolidacion

	git commit -m $consolidacion



	git push origin master
fi
fi
