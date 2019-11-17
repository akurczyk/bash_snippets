#!/bin/bash

#
# ZMIENNE
#
echo 'ZMIENNE'; echo; echo

aaa=10
bbb="bbb $aaa bbb" # wykonuje zmienne i polecenia
ccc='ccc $aaa ccc' # zachowuje tekst, ze znakami specjalnymi
ddd=`ls -ahl`
eee=$(ls -ahl)

echo $aaa
echo $bbb
echo $ccc
echo $ddd
echo $eee

echo
echo "fff $aaa fff"
echo 'ggg $aaa ggg'
echo "hhh >>>`ls -ahl`<<< hhh"
echo "iii >>>$(ls -ahl)<<< iii"

#
# MANIPULACJE NA ZNAKACH
#
echo; echo; echo 'MANIPULACJE NA ZNAKACH'; echo; echo

XXX='/aaa/bbb/ccc.txt.gz'
echo "${XXX#*.}"  # txt.gz - *. wszystko do kropki (włącznie) [# usuwa najkrótsze dopasowanie od początku]
echo "${XXX##*.}" # gz - *. wszystko do kropki (włącznie) [## usuwa najdłuższe dopasowanie od początku]
echo "${XXX%/*}"  # /aaa/bbb - /* wszystko od ukośnika (włącznie) [% najkrótsze dopasowanie od końca]
echo "${XXX%%.*}" # /aaa/bbb/ccc - .* wszystko od kropki (włącznie) [%% najdłuższe dopasowanie od końca]

echo ${XXX/aaa/xxx} # zamienia aaa na bbb
echo ${#XXX} # długość ciągu znaków

YYY='hello world!'
echo ${YYY:0:5} # zmienna : odkąd : liczba_zanków
echo ${YYY:6:5}

#
# ZMIENNE SPECJALNE
#
echo; echo; echo "ZMIENNE SPECJALNE"; echo; echo

echo $0 # nazwa skryptu
echo $1 $2 $3 $4 $5 $6 $7 $8 $9 # argumenty
echo $# # liczba argumentów
echo $@ # wszystkie parametry

echo $_ # z jaką powłoką wykonano skrypt (/bin/bash)
echo $  # wynik ostatniego polecenia (0 == ok)
echo $$ # PID procesu


#
# OPERACJE MATEMATYCZNE
#
echo; echo; echo "OPERACJE MATEMATYCZNE"; echo; echo
ZZZ=$[1*2*3*4*5]
echo $((10*20+10))
echo $[10*20/5]
echo $ZZZ
