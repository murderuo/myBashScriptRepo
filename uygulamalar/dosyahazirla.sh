#! /bin/bash

if (($#==0)); then
    echo "dosya ismini belirtiniz"
    echo "$0 dan sonra <dosyaismi> olarak giriniz."
else
    dosyaismi="$1.sh"
    # if (( $dosyaismi="" ));then
    #     echo "dosya ismini belirtiniz"
    # fi

    if [ -e "$dosyaismi" ]; then
        echo "$dosyaismi isminde bir dosya mevcut"
        sleep 0.5
        echo -e "dosya hazırlansın mı [e/h]:\c"
        read cevap
        if [ $cevap == "e" ];then
            #cat $dosyaismi
             echo '#! /bin/bash'> $dosyaismi
             echo "" >>$dosyaismi
             echo "">>$dosyaismi
             echo "">>$dosyaismi
             #cat $dosyaismi
             sleep 0.5
             echo "Dosya hazırlandı."
        else
            echo "Herhangi oluşturuldu ancak herhangi bir işlem yapılmadı."
             
        fi
    else
        touch $dosyaismi
        if [ -e $dosyaismi ];then
            echo "$dosyaismi isminde bir dosya oluşturuldu"
            sleep 0.5
            echo "$dosyaismi dosyasına çalıştırma izni veriliyor"
            sleep 0.5
            chmod +x $dosyaismi
            echo "$dosyaismi dosyasına çalışma izni verildi"
        fi

        echo -e "dosya hazırlansın mı [e/h]:\c"
        read cevap
        if [ $cevap == "e" ];then
             #cat $dosyaismi
             echo '#! /bin/bash'> $dosyaismi
             echo "" >>$dosyaismi
             echo "">>$dosyaismi
             echo "">>$dosyaismi
             #cat $dosyaismi
             sleep 0.3
            echo "Dosya hazırlandı"
        else
            echo "Herhangi oluşturuldu ancak herhangi bir işlem yapılmadı."
        fi
        
    fi
fi
echo "Ekran temizleniyor..."
sleep 0.7
clear
