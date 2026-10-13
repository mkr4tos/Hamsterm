# openwifi - list the open Wi-Fi networks around you, numbered, and connect to
# the one you pick. Waits until at least one open network shows up.
# Usage: sh /openwifi.sh

# 1. keep scanning until an open network appears. The pattern includes the
#    column separator so a secured network merely named "OpenWrt" is not
#    mistaken for an open one - grep matches plain text, so | is literal.
open=$(wf s | grep "| Open")
until [ -n "$open" ]; do
    sleep 1
    open=$(wf s | grep "| Open")
done

# 2. inform about found AP, print the list with numbers. 
names=$(echo "$open" | cut -f1)
count=$(echo "$names" | wc -l | tr -d ' ')
echo "Open WiFi (sorted by RSSI):"
i=1
while [ $i -le $count ]; do
    name=$(echo "$names" | head -n $i | tail -1)
    echo "$i) $name"
    i=$(( i + 1 ))
done

# 3. connect to the chosen number
read -p "Number (0 = cancel): " n
if [ "$n" -ge 1 ] && [ "$n" -le $count ]; then
    ssid=$(echo "$names" | head -n $n | tail -1)
    wf c $ssid
else
    echo "Cancelled"
fi

unset i 
unset name 
unset n 
unset ssid 
unset names 
unset open 
unset count 

