<?php

$auteur = array();
$auteur['id'] = '1';
$auteur['nom'] = 'albert';
$auteur['prenom'] = 'pascal';

$livres = array();
$livres['code'] = '123';
$livres['titre'] = 'Lol';
$livres['auteur'] = $auteur;

function afficherTab($livre){
    global $auteur;
    foreach ($livre as $cle => $valeur) {
        if ($cle == 'auteur') {
            afficherTab($auteur);
        }
        else {   
            echo "$cle : $valeur <br/>";
        }
    }
}

afficherTab($livres);