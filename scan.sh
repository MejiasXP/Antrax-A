#!/system/bin/sh

clear

echo -e "\e[31mESCANEO DE REDES\e[0m"

echo ""
echo -n "Objetivo: "
read target
echo ""
echo -n "Puerto: "
read port



function menu() {
echo ""
echo -e "\e[32m=========================\e[0m"
echo ""
echo -e "Objetivo \e[32m$target\e[0m"
echo ""
echo -e "Puerto \e[32m$port\e[0m"
echo ""
echo -e "\e[32m=========================\e[0m"
echo ""
echo "Tipo de analisis"
echo "1. Escaneo basico"
echo "2. Escaneo completo"
echo "3. Vulnerabilidades"
echo "4. XSS"
echo ""
echo -n "Opcion: "
read opt

if [ $opt == 1 ]
then
echo -e "\e[32m=========================\e[0m"        
nmap $target
menu
echo "a"

elif [ $opt == 2 ]
then
echo -e "\e[32m=========================\e[0m"            
sudo nmap -sS $target
menu            
exit

elif [ $opt == 3 ]
then
echo -e "\e[32m=========================\e[0m"                
nmap -sV --script vulnerscan-master/vulscan.nse $target
menu
exit

elif [ $opt == 3 ]
then
echo -e "\e[32m=========================\e[0m"                
nmap -sV --script vulscan-master/vulscan.nse $target
menu
exit                
                
fi 
}
menu
