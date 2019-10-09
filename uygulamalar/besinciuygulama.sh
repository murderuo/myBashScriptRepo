#! /bin/bash

if (( $# <1 ));then
    echo -e "Bir argüman giriniz.\nKullanım şekli $0 <sayi>"
    exit 1
fi


# faktoriyel(){
# }


sayi=$1

if  ! [[ $sayi =~ ^[[:blank:]]*[0-9]*[[:blank:]]*$  ]];then
    echo "Bir sayı girmediniz : $sayi"
else 
    carpim=1
    sayac=1
    while (( sayac<=sayi ));
    do
    carpim=$((carpim*sayac))
    ((sayac++))

    done
    
fi
echo "faktoriyeli: $carpim"
