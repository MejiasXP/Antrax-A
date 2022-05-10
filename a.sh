#!/system/bin/sh
clear
echo -e "\e[32m============================\e[0m"
echo "XXDSIO"       
echo "Proyecto: ATLAS"
echo "Versión: 1.0"
echo "diseñado por Miquel Mejías"
echo -e "\e[32m============================\e[0m"
echo ""
echo "1. Persona"
echo "2. Servidor"
echo "3. Ajustes"
echo ""

echo -n "Opción: "
read opt

    
if [ $opt == 1 ]
then
bash person.sh
exit    
echo "a"

elif [ $opt == 2 ]
then
bash scan.sh
exit
echo "b"
ls

elif [ $opt == 3 ]
then
bash ajustes.sh
exit
echo "c"
fi
