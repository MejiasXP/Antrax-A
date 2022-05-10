#!/system/bin/sh

clear

echo -e "\e[31mESCANEO DE PERSONAS\e[0m"

echo ""
echo -n "Usuario: "
read user
echo ""
echo -n "Nombre: "
read name
echo ""
echo -n "Apellidos: "
read aname


clear


function menu() {
echo ""
echo -e "\e[32m=========================\e[0m"
echo ""
echo -e "Usuario \e[32m$user\e[0m"
echo ""
echo -e "Nombre \e[32m$name\e[0m"
echo ""
echo -e "Apellidos \e[32m$aname\e[0m"
echo ""    
echo ""
echo "Tipo de analisis"
echo "1. Redes Sociales"
echo "2. Correo"
echo "3. Teléfono"
echo "4. Contraseñas"
echo ""
echo -n "Opcion: "
read opt

if [ $opt == 1 ]
then
echo -e "\e[32m=========================\e[0m"        
cd
cd sherlock
python3 sherlock $user
menu
echo "a"

elif [ $opt == 2 ]
then
echo -e "\e[32m=========================\e[0m"            
sudo nmap -sS $target
menu            
exit

elif [ $opt == 4 ]
then
echo -e "\e[32m=========================\e[0m"                
nmap -sV --script vulscan-master/vulscan.nse $target
menu
exit

elif [ $opt == 3 ]
then
echo -e "\e[32m=========================\e[0m"                
sudo nmap -O $target
menu
exit                
                
fi 
}
menu
