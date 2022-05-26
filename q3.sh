#!/bin/bash

read -p "IP: " ip
echo ""

OLD_IFS=$IFS
IFS='.'

set - $ip

converterBase() {
        echo "obase=2; $1" | bc
}

oct1=`converterBase $1`
oct2=`converterBase $2`
oct3=`converterBase $3`
oct4=`converterBase $4`

cont=0
for x in $oct1 $oct2 $oct3 $oct4
do
	adc=$(( cont+=1 ))


	if [ $cont == '1' ];
	then
		 printf "Primeiro: %08d\n" $x
	elif [ $cont == '2' ];
	then
		printf "Segundo: %08d\n" $x
	elif [ $cont == '3' ];
	then
		printf "Terceiro: %08d\n" $x
	elif [ $cont == '4' ];
	then
		printf "Quarto: %08d\n" $x
	fi
done

