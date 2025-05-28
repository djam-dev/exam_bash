#!/bin/bash

# fonction qui récupère les ventes de la carte graphique passée en paramètre via cURL 
getSales () { 
    carte=$1
    quantite=$(curl "http://0.0.0.0:5000/$carte")
    echo "$carte:$quantite"  >> ~/exam_JAMAIN/exam_bash/sales.txt
}

# liste des modèles de cartes 
cartes=("rtx3060" "rtx3070" "rtx3080" "rtx3090" "rx6700")

# Ecriture de la date dans sales.txt avant de boucler sur chaque modèle de cartes
echo "$(date)" >> ~/exam_JAMAIN/exam_bash/sales.txt

# exécution de getSales sur chaque carte de la liste cartes
for carte in "${cartes[@]}"
    do
        getSales "$carte"
    done
