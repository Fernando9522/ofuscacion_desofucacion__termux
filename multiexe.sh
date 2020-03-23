#!/bin/bash

help() {

echo -e "\n\n  bash multiexe.sh --use -Base64Tool"
echo -e "  bash multiexe.sh --ver -Creadores\n"
}

if [ ! -z $1 ] || [ ! -z $2 ]; then

	case $1 in
"--use")
;;

"--ver")
;;

*)
echo -e " Comando inválido"
help

;;
esac

case $2 in
"-Base64Tool")
source 'Base64Tool.sh'
;;

"-Creadores")
echo -e "\e[1;30mCreated by: \e[1;36mF@br1x \e[1;30mand \e[1;36m你好😜" |pv -qL 12
;;

*)
echo "Comando Invalido"
help
esac
else
help
fi

