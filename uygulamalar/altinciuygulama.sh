#! /bin/bash

randomsayi=$(( ($RANDOM%100)+1  ))

#echo "$randomsayi"

echo "Bilgisayar sayısını tuttu. Tahmin et bakalım"
sayac=1
echo -e "Tahmin ettiğiniz sayıyı giriniz.\c"
#read tahmin

while ((1))
do
    
    read yeni_tahmin    
    if (( yeni_tahmin == randomsayi));then
        echo "Tebrikler $sayac. seferde buldunuz"
        exit 
    elif ((yeni_tahmin>randomsayi));then
        echo  "Tahmininiz büyük. Belki yarısı olabilir :)"
        sleep 0.4
        echo -e "Yeniden tahmin ediniz.\c"
        ((sayac++))
    elif ((yeni_tahmin<randomsayi));then
        echo  "Tahmininiz küçük. Belki iki katı olabilir :)"
        echo -e "Yeniden tahmin ediniz.\c"
        sleep 0.4
        ((sayac++))
    fi

done

