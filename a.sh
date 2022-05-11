#!/system/bin/sh

clear

echo -e "\e[31mESCANEO DE REDES\e[0m"

echo ""
echo -n "Objetivo: "
read target
echo ""
echo -n "Puerto: "
read port

clear


function menu() {
echo ""
echo -e "\e[32m=========================\e[0m"
echo ""
echo -e "\e[32m*\e[0m Objetivo: \e[32m$target\e[0m"
echo ""
echo -e "\e[32m*\e[0m Puerto: \e[32m$port\e[0m"
echo ""
echo ""
echo "\e[31m*\e[0m Tipo de analisis"
echo ""
echo " 1. Escaneo basico"
echo " 2. Escaneo completo"
echo " 3. Deteccion Sistema"
echo " 4. Vulnerabilidades"
echo " 5. Añadir comandos"
echo ""
echo " 99. Volver"
echo ""
echo -e "\e[32m$comm\e[0m"
echo ""
echo -n "Opcion: "
read opt



        
if [ $opt == 1 ]
then
echo -e "\e[32m=========================\e[0m"        
nmap $comm $target
menu
echo "a"

elif [ $opt == 2 ]
then
echo -e "\e[32m=========================\e[0m"            
sudo nmap -sS $comm $target
menu            
exit

elif [ $opt == 4 ]
then
echo -e "\e[32m=========================\e[0m"                
nmap $comm -sV --script vulscan-master/vulscan.nse $target
menu
exit

elif [ $opt == 3 ]
then
echo -e "\e[32m=========================\e[0m"                
sudo nmap $comm -O $target
menu
exit                

elif [ $opt == 5 ]
then
echo -n "Command: "
read comm                        
menu
exit
                        
elif [ $opt == 5 ]
then
bash a.sh
exit                        
                    
fi 
}
menu

