if [[ $2 == *+* ]];
then
    resultat=$(($1 + $3))
    echo " Le résultat de l'opération est $resultat "
elif [[ $2 == *-* ]];
then
    resultat=$(($1 - $3))
    echo " Le résultat de l'opération est $resultat "
elif [[ $2 == */* ]];
then
    resultat=$(($1 / $3))
    echo " Le résultat de l'opération est $resultat "
elif [[ $2 == *x* ]];
then
    resultat=$(($1 * $3))
    echo " Le résultat de l'opération est $resultat "
else
    echo "Tu t'es trompé sur les arguments"
fi
