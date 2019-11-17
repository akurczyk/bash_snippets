#!/bin/bash

# if warunek1 ; then
#     polecenie1
# elif warunek2 ; then
#     polecenie2
# else
#     polecenie3
# fi

# jeśli warunek zwróci 0, wykonywany jest kod z then, w preciwnym przypadku - z else

if [ -e ~/.bashrc ] ; then # średnik zastępuje enter
    echo 'Plik ~/.bashrc istnieje!'
elif [ -e ~/.zshrc ] ; then
    echo 'Plik ~/.bashrc nie istnieje, ale ~/.zshrc już tak!'
else
    echo 'Nie znaleziono ani ~/.bashrc ani ~/.zshrc :-('
fi

# -a, -e istnieje
# -b istnieje i jest blokowy
# -c istnieje i jest znakowy
# -d istnieje i jest katalogiem
# -f istnieje i jest plikiem
# -h istnieje i jest symlinkiem
# -r istnieje i jest odczytywalny
# -s istnieje i nie jest pusty
# -w istnieje i jest zapisywalny
# -x istnieje i jest wykonywalny
# -O istnieje i obecny użytkownik jest właścicielem
# -G istnieje i grupa obecnego użytkownika jest właścicielem
# -S istnieje i jest socketem

if [ 'aaa' == 'aaa' ] && [ 'aaa' != 'bbb' ] ; then
    echo 'Zgadza się :-)'
fi

if [ 100 -ne 50 ] && [ 100 -lt 200 ] ; then
    echo 'To też!'
fi

if [ 50 -ne 50 ] || [ 50 -ne 100 ] ; then
    echo 'I to :-)'
fi

# inne możliwe notacje

if [ 100 -ne 50 ] && [ 100 -lt 200 ]
then
    echo 'v3'
fi

if [[ 100 -ne 50 && 100 -lt 200 ]] ; then echo 'v4' ; fi
