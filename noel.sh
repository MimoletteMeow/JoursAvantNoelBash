#!/bin/bash                                                                     

ajd=$(date +%s)
noel=$(date -d "Dec 25 $(date +%Y)" +%s)

if [ $ajd -gt $noel ]; then
    noel=$(date -d "Dec 25 $(( $(date +%Y) + 1 ))" +%s)
fi

if [ $ajd -eq $noel ]; then
    echo "Joyeux Noël!!"
else
    restant=$(( (noel - ajd) / 86400 ))
    echo "Il reste $restant jour(s) avant Noël !"
fi
