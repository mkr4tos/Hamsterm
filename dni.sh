echo "Para salir pulse CONTROL_C"; echo 

while [ 1 -eq 1 ]; do
  read -p "DNI sin 0 : " numero
  letra="$(($numero % 23))"
  if [ "$letra" -eq 0 ]; then
   letra="T"
    elif [ "$letra" -eq 1 ]; then
     letra="R"
    elif [ "$letra" -eq 2 ]; then
     letra="W"
    elif [ "$letra" -eq 3 ]; then
     letra="A"
    elif [ "$letra" -eq 4 ]; then
     letra="G"
    elif [ "$letra" -eq 5 ]; then
     letra="M"
    elif [ "$letra" -eq 6 ]; then
     letra="Y"
    elif [ "$letra" -eq 7 ]; then
     letra="F"
    elif [ "$letra" -eq 8 ]; then
     letra="P"
    elif [ "$letra" -eq 9 ]; then
     letra="D"
    elif [ "$letra" -eq 10 ]; then
     letra="X"
    elif [ "$letra" -eq 11 ]; then
     letra="B"
    elif [ "$letra" -eq 12 ]; then
     letra="N"
    elif [ "$letra" -eq 13 ]; then
     letra="J"
    elif [ "$letra" -eq 14 ]; then
     letra="Z"
    elif [ "$letra" -eq 15 ]; then
     letra="S"
    elif [ "$letra" -eq 16 ]; then
     letra="Q"
    elif [ "$letra" -eq 17 ]; then
     letra="V"
    elif [ "$letra" -eq 18 ]; then
     letra="H"
    elif [ "$letra" -eq 19 ]; then
     letra="L"
    elif [ "$letra" -eq 20 ]; then
     letra="C"
    elif [ "$letra" -eq 21 ]; then
     letra="K"
    elif [ "$letra" -eq 22 ]; then
     letra="E"
  fi
  echo "DNI $numero letra: $letra"; echo
  unset letra
  unset nombre 
  unset numero 
done





