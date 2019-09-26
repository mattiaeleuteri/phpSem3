<meta charset="utf-8" />
<h1>Exercice 2</h1>

<?php

function majeurMineur($annee){
    if(2019 - $annee < 18){
        echo "Vous êtes mineur";
    } elseif(2019 - $annee > 18){
        echo "Vous êtes majeur";
    } else{
        echo "Vous devenez/êtes devenu majeur cette année";
    }
}
echo "<h2>a)</h2>";
majeurMineur(1995);

function majeurMineurDate($annee){
    if(date('Y') - $annee < 18){
        echo "Vous êtes mineur";
    } elseif(date('Y') - $annee > 18){
        echo "Vous êtes majeur";
    } else{
        echo "Vous devenez/êtes devenu majeur cette année";
    }
}
echo "<h2>b)</h2>";
majeurMineurDate(1995);