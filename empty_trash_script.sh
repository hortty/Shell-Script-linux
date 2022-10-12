#!/bin/bash

echo "dont run me as root"
echo "O que deseja fazer, limpar todos os arquivos do lixo ou restaurar os arquivos na pasta trash_files dentro do diretorio $PWD"
echo
echo "1 para apenas limpar"
echo "2 para trazer arquivos para pasta trash_files"
read options
if [ $options -eq 1 ]
then
	echo "os seguintes arquivos estao sendo excluidos:"
	echo 
	ls -la /home/$USER/.local/share/Trash/
	echo
	echo "limpando o lixo..."
	rm -rf /home/$USER/.local/share/Trash/*
else
	if [ -d $PWD/trash_files ]
	then
		echo "trash_files ja existe, removendo esse diretorio..."
		rm -rf trash_files/
		echo "agora sera criado uma nova pasta"
	fi
	echo "criando diretorio trash_files aqui nessa pasta $PWD"
	mkdir trash_files
	echo "movendo arquivos"
	mv /home/$USER/.local/share/Trash/* trash_files/
fi
echo "prontinho!"
