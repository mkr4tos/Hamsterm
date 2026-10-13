read -p "Nombre: " name
read -p "Passwd: " passwd


ap -s ${name} -p ${passwd} start

unset name
unset passwd
