#!/system/bin/sh

clear

echo -e "\e[31mESCANEO DE PERSONAS\e[0m"

echo ""
echo -n "Usuario: "
read user
echo ""
echo -n "Nombre Completo: "
read name
echo ""
echo -n "Telefono: "
read phone
echo ""
echo -n "Correo: "
read mail


clear


function menu() {
echo ""
echo -e "\e[32m=========================\e[0m"
echo ""
echo -e "\e[32m*\e[0m Usuario: \e[32m$user\e[0m"
echo ""
echo -e "\e[32m*\e[0m Nombre: \e[32m$name\e[0m"
echo ""
echo -e "\e[32m*\e[0m Telefono: \e[32m$phone\e[0m"    
echo ""
echo -e "\e[32m*\e[0m Correo: \e[32m$mail\e[0m"    
echo ""      
echo -e "\e[31m*\e[0m Tipo de analisis"
echo "  1. Cuentas redes sociales"
echo "  2. Correo"
echo "  3. Telefono"
echo "  4. Contraseñas robadas"
echo "  5. Ubicacion"
echo "  6. INFECTAR"
echo "  7. POST INFECCION"
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
            

