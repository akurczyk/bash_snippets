#!/bin/bash

# for zmienna in lista ; do
#     polecenie
# done

for zmienna in element1 element2 element3 ; do
    echo $zmienna
done

for plik in `ls` ; do
    echo "$[i++]. $plik (`ls -hl $plik | awk '{print $5}'`)"
done

for plik in * ; do echo $plik ; done

for i in `seq 1 10` ; do echo $i ; done



# for ((inicjacja_zmiennej; warunek_zakonczenia; zwiększanie/zmniejszanie)) ; do
#    polecenie
# done

for (( i=1; $i <= 10; i++ )) ; do
    echo $i
done



# while warunek ; do
#     polecenie
# done

i=0
while [ $i -le 10 ] ; do
    echo $i
    i=$[i+1]
done



# until warunek ; do
#     polecenie
# done

i=0
while [ $i -ne 10 ] ; do
    echo $i
    i=$[i+1]
done
