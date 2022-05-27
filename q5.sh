#!/bin/bash


read -p "Digite uma senha com pelo menos 5 caracteres, uma letra maiúscula e um número:  "

read -s senha

echo "$senha" | grep -qP '^.*(?=.{5,})(?=.*[A-Z])(?=.*\d)(?=.*[a-z]).*$'; 

VAL=$?
if [ $VAL = '0' ];

then
	echo -e "Senha Validada com sucesso."
else
	echo -e "Essa senha é inválida, tente novamente."
fi
