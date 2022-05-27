#!/bin/bash 

while true; do
	echo "A morte não é nada para nós, pois, quando existimos, não existe a morte, e quando existe a morte, não existimos mais."
	echo " MENU
[a] - Liste apenas os diretórios de uma pasta
[b] - Liste apenas os arquivos executáveis
[c] - Liste apenas os links simbólicos
[d] - Sair do script "

a=" "

while [ "$x" != "d" ]
do
	read -p "Escolha uma opção: " a

if [ "$a" = "a" ] ;
then
	 read -p "Escolha uma pasta para dar ls: " dir
		     ls -al $dir | grep "^d"

elif [ "$a" = "b" ] ;
then
	read -p "Escolha uma pasta para listar os executáveis: " arqv
			for i in $(ls $arqv);
			do
				if [ -x $i ];then
					echo $i
				fi
		
			else [ "$a" = "c" ];	
	read -p "Escolha uma pasta para os arquivos simbólicos: " arqv
			for i in $(ls $arqv);
			do
				if [ -h $arqv ];then
					echo $i
				fi
			

cat << EOF
 MENU
[a] - Liste apenas os diretórios de uma pasta
[b] - Liste apenas os arquivos executáveis
[c] - Liste apenas os links simbólicos
[d] - Sair do script
EOF

done
