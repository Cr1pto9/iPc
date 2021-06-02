#!bin/bash
#Cr1pto9
echo -e ':)'
sleep 2
clear
trap CTRL_C INT
function CTRL_C(){
clear
printf "\e[1;32mScript detenido\e[0m\n"
tput cnorm
exit
}
sleep 0.5
gris='\033[1;30m'
rojo='\033[0;31m'
rojoclaro='\033[1;31m'
verde='\033[1;32m'
amarillo='\033[1;33m'
azul='\033[0;34m'
lila='\033[0;35m'
lilaclaro='\033[1;35m'
cian='\033[0;36m'
blanco='\033[1;37m'
cero='\033[0m'
clear
colores=($gris $rojo $rojoclaro $verde $amarillo $azul $lila $lilaclaro $cian $blanco $cero )
for c in "${colores[@]}";do
    printf "\r $c Ejecutando script by:Cr1pto9  $cero "
   sleep 0.5
done

function depen(){
        tput civis
        clear
        depen=(python curl)

        echo -e "[*]Comprobando paquetes necesarios..."
        sleep 2

        for program in "${depen[@]}"; do
                echo -ne "\n paquetes $program..."

                test -f /usr/bin/$program

                if [ "$(echo $?)" == "0" ]; then
                        echo -e "(V)"
                else
                        echo -e "(X)\n"
                        echo -e "[*]$verde Instalando paquete $program..."
                        apt-get install $program -y
                        echo -e '\e[1;35m Paquetes instalados...$cero\n \e[1;34mVerificar'
                fi
        done
}
depen
