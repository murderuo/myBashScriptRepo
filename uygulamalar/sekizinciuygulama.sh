#! /bin/bash



# kullanıcı oluşturma uygulaması

trchar=("ü" "ğ" "ö" "ç" "ı" "ş" "Ç" "Ü" "Ğ" "Ö" "Ş")
enchar=("u" "g" "o" "c" "i" "s" "C" "U" "G" "O" "S")

read -p "İsim Soyisim giriniz :" isim soyisim

if  [ -z $isim ] ; then
    echo "Bir isim giriniz.";exit 1
elif [ -z  $soyisim ]; then
    echo "Bir soyisim giriniz.";exit 1
else
    # tamadsoyad="$isim $soyisim"    
    isim=$(echo $isim | tr [:upper:] [:lower:])
    soyisim=$(echo $soyisim | tr [:upper:] [:lower:]  )

    for (( i=0;i<${#isim};i++ ));do
    # echo "${isim:$i:1}"
        for (( j=0;j<${#trchar[@]};j++ ));do
            if [ ${isim:$i:1} == ${trchar[j]} ];then
                #echo "isimdeki karakter :${isim:$i:1} trdizideki karakter :${trchar[j]} endizideki karakter ${enchar[j]}"
                isim=${isim//${isim:$i:1}/${enchar[j]}}
            fi
        done
    done

    for (( i=0;i<${#soyisim};i++ ));do
    # echo "${isim:$i:1}"
        for (( j=0;j<${#trchar[@]};j++ ));do
            if [ ${soyisim:$i:1} == ${trchar[j]} ];then
                #echo "isimdeki karakter :${isim:$i:1} trdizideki karakter :${trchar[j]} endizideki karakter ${enchar[j]}"
                soyisim=${soyisim//${soyisim:$i:1}/${enchar[j]}}
            fi
        done
    done
    loginname="${isim}.${soyisim}"  
    desktopIsim=$(echo $isim | tr [:upper:] [:lower:])
    dekstopSoyisim=$(echo $soyisim | tr [:lower:] [:upper:] )



    # loginisim="$isim"
    
    tamisim="$desktopIsim $dekstopSoyisim"
    # echo -e "Masaüstü isim :$tamisim" 
    # echo -e "Login Name: $loginname" 
fi

shellList=( "ksh:Korn_Shell" "bash:Bourne_again_Shell" )
echo "Hangi Shell'i kullanacaksınız :"
# read shell 

select sh in ${shellList[@]}
do
    case $sh in
    ksh:Korn_Shell ) Shellinfo=$(echo "Korn shell seçildi")
    echo -e $Shellinfo;secShell="/bin/ksh"
    # echo "$secShell"
    break;;
    bash:Bourne_again_Shell ) Shellinfo=$(echo "Born Again shell seçildi")
    echo -e $Shellinfo;secShell="/bin/bash"
    # echo "$secShell"
    break;;
    * ) echo -e "Herhangi bir shell seçmediniz.";secShell=;exit 1;;
    esac
done

read -p "Home Directory oluşturulacak mı[e/h]:" secim
if ! [ -z $secim ];then
    if [ $secim == "e" ];then
        echo "directory oluşturulacak";direct="-m"
    elif [ $secim == "h" ];then
        echo "directory oluşturulmayacak";direct=
    else 
        echo "geçerli seçim yapılmadı"
    fi
else
    echo "seçim boş"
fi

echo "Komut:"
echo "----------------------------------------------------"
echo "sudo useradd $direct -d /home/$loginname -s $secShell -c \"$tamisim\" $loginname"
