#!/system/bin/sh
clear
echo -e "\e[32m============================\e[0m"
echo "XXDSIO"       
echo "Proyecto: ATLAS"
echo "Versión: 1.0"
echo "designed by Miquel Mejías"
echo -e "\e[32m============================\e[0m"
echo ""
echo "1. Recopilar Persona"
echo "2. Recopilar Servidor"
echo "3. Herramientas de hacking"
echo "4. Modo Incógnito"
echo "5. Ajustes"
echo ""

echo -n "Opcion: "
read opt

    
if [ $opt == 1 ]
then
bash person.sh
exit    

elif [ $opt == 2 ]
then
bash scan.sh
exit


elif [ $opt == 3 ]
then
bash ajustes.sh
exit
fi

