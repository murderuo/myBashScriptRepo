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
    echo "Yedek klasörü var, ismi değiştiriliyor" 
    sleep 1
    if [ -d "$yedekklasor.backup" ];then
        mv "$yedekklasor.backup" "$yedekklasor.backup$(date +%d%m%Y%S)"
        sleep 1
        else
        mv $yedekklasor "$yedekklasor.backup"     
        sleep 1
        mkdir $yedekklasor
    fi
    
fi


for dosya in $(ls)
do
    if [ -f $dosya ];then
        echo "$dosya kopyalanıyor.."
        sleep 0.2
        cp -p $dosya $yedekklasor
    elif [ -d "$dosya" ];then
        echo "$dosya klasörü kopyalanıyor.."
        sleep 0.2
        cp -r $dosya $yedekklasor
    fi
# clear
done

echo "Tüm dosyalar kopyalandı"
