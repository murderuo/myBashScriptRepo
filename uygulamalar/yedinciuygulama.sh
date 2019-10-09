#! /bin/bash

islemler=("+" "-" 'x' "/")

if (( $# <3 ));then
    echo -e "Argümanlar eksik.\nKullanım şekli $0 <sayi1> <islem> <sayi2"
    echo -e "\nişlemler : ${islemler[@]}"
    exit 1
fi


# echo "dört işlem programına hoş geldiniz."
# echo -e "\nişlemler : ${islemler[@]}"
sonuc=0
sayi1=$1
sayi2=$3
islem=$2

case $2 in
+ ) echo "Toplama işleminin sonucu :$(( sayi1 + sayi2 ))";;
- ) echo "Çıkarma işleminin sonucu :$(( sayi1 - sayi2 ))";;
x ) echo "Çarpma işleminin sonucu : $(( sayi1 * sayi2 ))";;
/ ) echo "Bölme işleminin sonucu :$(( sayi1 / sayi2 ))";;
esac




