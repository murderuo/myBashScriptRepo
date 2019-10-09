#! /bin/bash

yedekklasor="$HOME/Desktop/yedek$(date +%d%m%Y)"
# echo $yedekklasor
if  [ ! -d "$yedekklasor" ] 
then
    echo "klasör yok oluşturuluyor"
    sleep 1
    mkdir $yedekklasor
    echo "klasör oluşturuldu"   
else
    echo "klasör var isim değişiyor" 
    sleep 1
    if [ -d "$yedekklasor.backup" ];then
        mv "$yedekklasor.backup" "$yedekklasor.backup$(date +%d%m%Y%S)"
        sleep 1
        # mkdir $yedekklasor
        echo "hata 1"
        else
        mv $yedekklasor "$yedekklasor.backup"     
        sleep 1
        mkdir $yedekklasor
        echo "hata 2"
    fi
    
fi


for dosya in $(ls)
do
    if [ -f $dosya ];then
        echo "$dosya kopyalanıyor.."
        sleep 0.2
        clear
        cp -p $dosya $yedekklasor
    fi
done

echo "Tüm dosyalar kopyalandı"