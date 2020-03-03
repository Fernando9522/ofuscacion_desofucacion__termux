#!/bin/bash
clear
r='\e[1;31m'
v='\e[1;32m'
y='\e[1;33m'
a='\e[1;34m'
c='\e[1;36m'
n='\e[1;30m'
w='\e[1;37m'
d='\e[0m'
m='\e[1;35m'

apt install pv -y > /dev/null 2>&1

trap creadores INT
creadores() {
	clear
	sleep 1
	echo ""
	echo ""
	printf "\n\e[1;30m  Created by :\e[1;36m F@br1x\e[1;30m and \e[1;36m你好😜\e[0;m\n\n\n"
	sleep 3
	exit
}

menu() {
printf "$v=================================$d\n"
echo -e "${n}[1] ${w}Ofuscar Texto En Base64${d}"
printf "$v=================================$d\n"
echo -e "${n}[2] ${w}Desofuscar Texto En Base64${d}"
printf "$v=================================$d\n"
echo -e "${n}[3] ${w}Ofuscar Archivo En Base64${d}"
printf "$v=================================$d\n"
echo -e "${n}[4] ${w}Desofuscar Archivo En Base64${d}"
printf "$v=================================$d\n"
echo -e "${n}[5] ${w}Salir De La Tool${d}"
printf "$v=================================$d\n"
printf "\e[1;30m  Created by :\e[1;36m F@br1x\e[1;30m and \e[1;36m你好😜\e[0;m\n\n\n"
}

pregunta() {
printf "${y}Ingrese Una Opción${r}:~#${w} "
read opcion
}

error() {
        echo -e "${a}[${y}!${a}]${r}Opción Incorrecta${d}"
        sleep 1.5
        clear
}

#opcion1
menu
pregunta

if [ "$opcion" == "1" ]; then
	echo -e "\n"
	printf "${a}[${v}=${a}]${y}Ingrese el Texto a Ofuscar${r}:~> ${w}"
	read -r ofuscar
	sleep 2
	printf "${a}[${m}!${a}]${v}Comenzando Ofuscación del Texto...${d}\n" |pv -qL 12
	sleep 4
	printf "${a}[${v}+${a}]${w}Resultado del Texto Ofuscado:${v} "
	sleep 3
	printf "$ofuscar${d}"|base64
	sleep 3
	printf "\n${a}[${m}?${a}]${y}Presiona Enter Para Continuar "
	sleep 1.5
	read -r
	source 'Base64Tool.sh'

elif [ "$opcion" == "2" ]; then
	echo -e "\n"
        printf "${a}[${v}=${a}]${y}Ingrese el Texto a Desofuscar${r}:~> ${w}"            
	read -r desofuscar
        sleep 2
	printf "${a}[${m}!${a}]${v}Comenzando Desofuscación del Texto...${d}\n" |pv -qL 12
        sleep 4
        printf "${a}[${v}+${a}]${w}Resultado del Texto Desofuscado:${v} "
        sleep 3
        printf "$desofuscar" |base64 -d
	echo -e "${d}"
        sleep 3
        printf "\n${a}[${m}?${a}]${y}Presiona Enter Para Continuar "
        sleep 1.5
        read -r
        source 'Base64Tool.sh'

elif [ "$opcion" == "3" ]; then
	echo -e "\n"                                                          
	printf "${a}[${v}=${a}]${y}Ingrese Ruta del Archivo a Ofuscar${r}:~> ${w}"
        read -r ofuscar
        sleep 2
	printf "${a}[${v}=${a}]${y}Ingrese Nuevo Nombre de Archivo Ofuscado${r}:~> ${w}"
	read -r nameofuscado
	sleep 2
	printf "${a}[${m}!${a}]${v}Comenzando Ofuscación del Archivo...${d}\n" |pv -qL 12             
	sleep 4
	touch $nameofuscado
	base64 $ofuscar > $nameofuscado
	mv $nameofuscado '/data/data/com.termux/files/home/Base64Tool/ofuscados/'
        printf "${a}[${v}+${a}]${w}Resultado del Archivo Ofuscado\n${a}[${v}+${a}]${w}Se Encuentra en:${v}${y} /data/data/com.termux/files/home/Base64Tool/ofuscados/ "
        sleep 3
	echo ""
        printf "\n${a}[${m}?${a}]${y}Presiona Enter Para Continuar "                 
	sleep 1.5                                                                     
	read -r
        source 'Base64Tool.sh'

elif [ "$opcion" == "4" ]; then
	echo -e "\n"
	printf "${a}[${v}=${a}]${y}Ingrese Ruta del Archivo a Desofuscar${r}:~> ${w}"                    
	read -r desoofuscar                                                                               
	sleep 2                                                                                       
	printf "${a}[${v}=${a}]${y}Ingrese Nuevo Nombre de Archivo Desofuscado${r}:~> ${w}"
        read -r namedesofuscado
        sleep 2                                                                                       
	printf "${a}[${m}!${a}]${v}Comenzando Ofuscación del Archivo...${d}\n" |pv -qL 12
	sleep 4
        touch $namedesofuscado
        base64 -d $desoofuscar > $namedesofuscado
	rm $desoofuscar 
        mv $namedesofuscado '/data/data/com.termux/files/home/Base64Tool/desofuscados/'
        printf "${a}[${v}+${a}]${w}Resultado del Archivo Ofuscado\n${a}[${v}+${a}]${w}Se Encuentra en:${v}${y} /data/data/com.termux/files/home/Base64Tool/ofuscados/ "
        sleep 3
        echo ""
        printf "\n${a}[${m}?${a}]${y}Presiona Enter Para Continuar "
        sleep 1.5
        read -r
        source 'Base64Tool.sh'

elif [ "$opcion" == "5" ]; then
	echo -e "\n\n"
	printf "\e[1;30m  Created by :\e[1;36m F@br1x\e[1;30m and \e[1;36m你好😜\e[0;m\n\n\n"
	exit

else
	error
	source 'Base64Tool.sh'	
fi
