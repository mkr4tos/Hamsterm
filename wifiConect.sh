ssid=""
passwd=""

echo "Mostrando Redes"
wf s | head -n 9

read -p "SSID: " ssid

if wf s | head -n 9 | grep "${ssid}" >log_wifi.tmp ; then
  read -p "PASSWD: " passwd
  wf c ${ssid} -p ${passwd} 
else 
  echo "No hay coincidencias"
fi

rm log_wifi.tmp
unset passwd
unset ssid
