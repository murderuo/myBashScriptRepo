#! /bin/bash

#x=$1
if (($#==0));then
    echo "Herhangi bir sayı girmediniz"
elif (($#==1));then
    echo "Bir tane daha sayı giriniz."
elif ! [[ "$1" =~ ^[[:blank:]]*[0-9]*[[:blank:]]*$ ]]; then
    echo "hatalı giriş yaptınız. $1"
elif ! [[ "$2" =~ ^[[:blank:]]*[0-9]*[[:blank:]]*$ ]];then
    echo "hatalı giriş yaptınız $2"
elif (($#==2));then
    sayi1=$1
    sayi2=$2
    toplam=$(($sayi1+$sayi2))
    echo "Toplam : $toplam"
    fi
